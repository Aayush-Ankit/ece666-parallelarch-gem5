## Full command to build gem5 for a config file
#python `which scons` build/ECE666_DSI_NEW/gem5.opt -j 8

## Full command for debug
#./build/ECE666_DSI/gem5.opt --debug-flags={ProtocolTrace,RubySlicc} --outdir=sim_traces/ configs/example/ruby_random_test.py -n2 --maxloads=100000 -m10000000

## Full command for system emulation mode (with se.py)
#./build/ECE666_DSI/gem5.opt --outdir=sim_traces/ configs/example/se.py --ruby --num-cpus=2 --mem-size=8192MB --DSI_MODE=1 --cmd=configs/dist/splash2/codes/apps/ocean/contiguous_partitions/OCEAN --options="-p2 -n18"


###################################### ECE 666 Project benchmakrs ######################################

### DSI_FLAG=0, CACHE_SIZE=2M
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/ocean_NOdsi configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=0 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=8  --cmd=configs/dist/splash2/codes/apps/ocean/contiguous_partitions/OCEAN --options="-p 2 -n 66"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/fft_NOdsi configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=0 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=8  --cmd=configs/dist/splash2/codes/kernels/fft/FFT --options="-p 2 -m 12"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/lu_NOdsi configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=0 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=8  --cmd=configs/dist/splash2/codes/kernels/lu/contiguous_blocks/LU --options="-p 2 -n 128"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/radix_NOdsi configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=0 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=8  --cmd=configs/dist/splash2/codes/kernels/radix/RADIX --options="-p 2"
./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/raytrace_NOdsi configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=0 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=8  --cmd=configs/dist/splash2/codes/apps/raytrace/RAYTRACE --options="-p2 -m32 configs/dist/splash2/codes/apps/raytrace/inputs/balls4.env" #-I100000000
#
### DSI_FLAG=1, DSI_FIFO_SIZE=8, DSI_VERSION_BITS=4, CACHE_SIZE=2M
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/ocean_dsi_f8_v4_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/apps/ocean/contiguous_partitions/OCEAN --options="-p 2 -n 66"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/fft_dsi_f8_v4_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/kernels/fft/FFT --options="-p 2 -m 12"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/lu_dsi_f8_v4_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB  --dsi_version_bits=4 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/kernels/lu/contiguous_blocks/LU --options="-p 2 -n 128"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/radix_dsi_f8_v4_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/kernels/radix/RADIX --options="-p 2"
./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/raytrace_dsi_f8_v4_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/apps/raytrace/RAYTRACE --options="-p2 -m32 configs/dist/splash2/codes/apps/raytrace/inputs/balls4.env" #-I500000000
#
### DSI_FLAG=1, DSI_FIFO_SIZE=4, DSI_VERSION_BITS=4, CACHE_SIZE=2M
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/ocean_dsi_f4_v4_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=4 --cmd=configs/dist/splash2/codes/apps/ocean/contiguous_partitions/OCEAN --options="-p 2 -n 66"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/fft_dsi_f4_v4_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=4 --cmd=configs/dist/splash2/codes/kernels/fft/FFT --options="-p 2 -m 12"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/lu_dsi_f4_v4_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB  --dsi_version_bits=4 --l1d_dsiFIFO_size=4 --cmd=configs/dist/splash2/codes/kernels/lu/contiguous_blocks/LU --options="-p 2 -n 128"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/radix_dsi_f4_v4_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=4 --cmd=configs/dist/splash2/codes/kernels/radix/RADIX --options="-p 2"
./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/raytrace_dsi_f4_v4_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=4 --cmd=configs/dist/splash2/codes/apps/raytrace/RAYTRACE --options="-p2 -m32 configs/dist/splash2/codes/apps/raytrace/inputs/balls4.env" #-I500000000
#
### DSI_FLAG=1, DSI_FIFO_SIZE=16, DSI_VERSION_BITS=4, CACHE_SIZE=2M
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/ocean_dsi_f16_v4_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=16 --cmd=configs/dist/splash2/codes/apps/ocean/contiguous_partitions/OCEAN --options="-p 2 -n 66"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/fft_dsi_f16_v4_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=16 --cmd=configs/dist/splash2/codes/kernels/fft/FFT --options="-p 2 -m 12"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/lu_dsi_f16_v4_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB  --dsi_version_bits=4 --l1d_dsiFIFO_size=16 --cmd=configs/dist/splash2/codes/kernels/lu/contiguous_blocks/LU --options="-p 2 -n 128"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/radix_dsi_f16_v4_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=16 --cmd=configs/dist/splash2/codes/kernels/radix/RADIX --options="-p 2"
./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/raytrace_dsi_f16_v4_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=16 --cmd=configs/dist/splash2/codes/apps/raytrace/RAYTRACE --options="-p2 -m32 configs/dist/splash2/codes/apps/raytrace/inputs/balls4.env" #-I500000000
#
### DSI_FLAG=1, DSI_FIFO_SIZE=8, DSI_VERSION_BITS=2, CACHE_SIZE=2M
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/ocean_dsi_f8_v2_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=2 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/apps/ocean/contiguous_partitions/OCEAN --options="-p 2 -n 66"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/fft_dsi_f8_v2_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=2 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/kernels/fft/FFT --options="-p 2 -m 12"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/lu_dsi_f8_v2_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB  --dsi_version_bits=2 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/kernels/lu/contiguous_blocks/LU --options="-p 2 -n 128"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/radix_dsi_f8_v2_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=2 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/kernels/radix/RADIX --options="-p 2"
./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/raytrace_dsi_f8_v2_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=2 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/apps/raytrace/RAYTRACE --options="-p2 -m32 configs/dist/splash2/codes/apps/raytrace/inputs/balls4.env" #-I500000000
#
### DSI_FLAG=1, DSI_FIFO_SIZE=8, DSI_VERSION_BITS=6, CACHE_SIZE=2M
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/ocean_dsi_f8_v6_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=6 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/apps/ocean/contiguous_partitions/OCEAN --options="-p 2 -n 66"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/fft_dsi_f8_v6_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=6 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/kernels/fft/FFT --options="-p 2 -m 12"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/lu_dsi_f8_v6_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB  --dsi_version_bits=6 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/kernels/lu/contiguous_blocks/LU --options="-p 2 -n 128"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/radix_dsi_f8_v6_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=6 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/kernels/radix/RADIX --options="-p 2"
./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/raytrace_dsi_f8_v6_c2M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=2MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=6 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/apps/raytrace/RAYTRACE --options="-p2 -m32 configs/dist/splash2/codes/apps/raytrace/inputs/balls4.env" #-I500000000
#
### DSI_FLAG=1, DSI_FIFO_SIZE=8, DSI_VERSION_BITS=4, CACHE_SIZE=8M
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/ocean_dsi_f8_v4_c8M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=8MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/apps/ocean/contiguous_partitions/OCEAN --options="-p 2 -n 66"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/fft_dsi_f8_v4_c8M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=8MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/kernels/fft/FFT --options="-p 2 -m 12"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/lu_dsi_f8_v4_c8M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=8MB --l1d_assoc=8 --mem-size=8192MB  --dsi_version_bits=4 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/kernels/lu/contiguous_blocks/LU --options="-p 2 -n 128"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/radix_dsi_f8_v4_c8M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=8MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/kernels/radix/RADIX --options="-p 2"
./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/raytrace_dsi_f8_v4_c8M configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=8MB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/apps/raytrace/RAYTRACE --options="-p2 -m32 configs/dist/splash2/codes/apps/raytrace/inputs/balls4.env" #-I500000000
#
### DSI_FLAG=1, DSI_FIFO_SIZE=8, DSI_VERSION_BITS=4, CACHE_SIZE=512K
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/ocean_dsi_f8_v4_c512K configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=512kB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/apps/ocean/contiguous_partitions/OCEAN --options="-p 2 -n 66"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/fft_dsi_f8_v4_c512K configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=512kB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/kernels/fft/FFT --options="-p 2 -m 12"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/lu_dsi_f8_v4_c512K configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=512kB --l1d_assoc=8 --mem-size=8192MB  --dsi_version_bits=4 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/kernels/lu/contiguous_blocks/LU --options="-p 2 -n 128"
#./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/radix_dsi_f8_v4_c512K configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=512kB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/kernels/radix/RADIX --options="-p 2"
./build/ECE666_DSI_NEW/gem5.opt --outdir=sim_traces/raytrace_dsi_f8_v4_c512K configs/example/se.py --ruby --num-cpus=2 --DSI_MODE=1 --l1d_size=512kB --l1d_assoc=8 --mem-size=8192MB --dsi_version_bits=4 --l1d_dsiFIFO_size=8 --cmd=configs/dist/splash2/codes/apps/raytrace/RAYTRACE --options="-p2 -m32 configs/dist/splash2/codes/apps/raytrace/inputs/balls4.env" #-I500000000
#
####################################### ECE 666 Project benchmakrs ######################################
