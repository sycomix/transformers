export OUTPUT_DIR_NAME=bart_sum
export CURRENT_DIR=${PWD}
export OUTPUT_DIR=${CURRENT_DIR}/${OUTPUT_DIR_NAME}

# Make output directory if it doesn't exist
mkdir -p $OUTPUT_DIR

# Add parent directory to python path to access transformer_base.py
export PYTHONPATH="../../":"${PYTHONPATH}"

python run_bart_sum.py \
--data_dir=./cnn-dailymail/cnn_dm \
--model_type=bart \
--model_name_or_path=bart-large \
--learning_rate=3e-5 \
--train_batch_size=4 \
--eval_batch_size=4 \
--output_dir=$OUTPUT_DIR \
--do_train  $@
