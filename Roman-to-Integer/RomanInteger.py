values = {'I': 1, 'V': 5, 'X': 10, 'L' : 50, 'C' : 100, 'D' : 500, 'M' : 1000}   
        result = 0
        for i in range(len(s)):
            if i + 1 < len(s) and values[s[i]] < values[s[i + 1]] : # if current item is not the last item on the string
                                                                    # and current item's value is smaller than next item's value 
                result = result - values[s[i]]                      # then subtract current item's value from result
            else:
                result = result + values[s[i]]                      # otherwise add current item's value to result
        return result
