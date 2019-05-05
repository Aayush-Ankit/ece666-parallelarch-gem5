/*
 * Copyright (c) 1999-2008 Mark D. Hill and David A. Wood
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met: redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer;
 * redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution;
 * neither the name of the copyright holders nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef __MEM_RUBY_STRUCTURES_TBETABLE_HH__
#define __MEM_RUBY_STRUCTURES_TBETABLE_HH__

#include <iostream>
#include <queue>

template<class ENTRY>
class DSIFifo
{
  public:
    // PENDING - create new parameter for number of DSI entries (currently hardcoded to 64)
    int number_of_DSIs = 64;
    DSIFifo()
      : m_number_of_DSIs(number_of_DSIs)
    {
    }

    // allocates an entry at the back, and returns a pointer to it
    ENTRY* push_back();
    // removes an entry from the front, and returns a pointer to it
    ENTRY* pop_front();
    // get size of queue
    int get_size() const;

    areNSlotsAvailable(int n, Tick current_time) const
    {
        return (m_number_of_DSIs - m_queue.size()) >= n;
    }

    // Print DSI contents
    void print(std::ostream& out) const;

  private:
    // Private copy constructor and assignment operator
    DSIFifo(const DSIFifo& obj);
    DSIFifo& operator=(const DSIFifo& obj);

    // Data Members (m_prefix)
    std::queue<ENTRY> m_queue;

  private:
    int m_number_of_DSIs;
};

template<class ENTRY>
inline std::ostream&
operator<<(std::ostream& out, const DSIFifo<ENTRY>& obj)
{
    obj.print(out);
    out << std::flush;
    return out;
}

template<class ENTRY>
inline ENTRY*
DSIFifo<ENTRY>::push_back()
{
    assert(m_queue.size() < m_number_of_DSIs);
    m_queue.push_back(ENTRY());
    return &(m_queue.back());
}

template<class ENTRY>
inline ENTRY*
TBETable<ENTRY>::pop_front()
{
    assert(m_queue.size() > 0);
    ENTRY temp = m_queue.front();
    m_queue.pop_front();
    return &temp;
}

template<class ENTRY>
inline void
DSIFifo<ENTRY>::print(std::ostream& out) const
{
}

template<class ENTRY>
inline int
DSIFifo<ENTRY>::get_size() const
{
  return m_queue.size();
}

#endif // __MEM_RUBY_STRUCTURES_TBETABLE_HH__
