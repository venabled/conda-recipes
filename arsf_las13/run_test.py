try:
    import las13
    from las13 import las13reader
except ImportError as err:
    raise Exception(err)
