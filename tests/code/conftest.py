import pytest

from core.data import CustomPreprocessor


@pytest.fixture
def dataset_loc():
    return "datasets/dataset.csv"


@pytest.fixture
def preprocessor():
    return CustomPreprocessor()
