#!/bin/bash

rm *.err
rm *.out

for model in fwd-cnn; do 
    for lrt in 0.001 0.0001; do 
        for nfeature in 32 64 96; do 
            for nhidden in 100; do 
                for ncond in 4; do 
                    for npred in 20 50; do 
                        sbatch submit_train_fm.slurm $model $lrt $nfeature $nhidden $ncond $npred
                    done
                done
            done
        done
    done
done
