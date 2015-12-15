def to_banner(text, ch='#', length=78):
    spaced_text = ' %s ' % text.upper()
    return spaced_text.center(length, ch)

class FilterModule(object):
    ''' A filter to split a string into a list. '''
    def filters(self):
        return {
            'to_banner': to_banner,
        }