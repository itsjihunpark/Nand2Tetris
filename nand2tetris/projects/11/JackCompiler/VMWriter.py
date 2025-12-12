class VMWriter:

    def __init__(self):
        self.vm_code = []

    def write_push(self, segment, index):
        self.vm_code.append(f"push {segment} {index}")

    def write_pop(self, segment, index):
        self.vm_code.append(f"pop {segment} {index}")

    def write_arithmetic(self, command):
        self.vm_code.append(f"{command}")

    def write_label(self, label):
        pass

    def write_goto(self, label):
        pass

    def write_if(self, label):
        pass

    def write_call(self, name, nargs):
        self.vm_code.append(f"{name}")

    def write_function(self, name, nargs):
        self.vm_code.append(f"{name}")

    def write_return(self):
        pass

    def close(self):
        pass


