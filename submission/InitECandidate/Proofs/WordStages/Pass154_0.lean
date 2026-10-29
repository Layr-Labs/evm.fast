import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source154
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word154_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64])

def word154_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 30 (Flapjack.WordLangAddr.addr 30 0#64))

def word154_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_0 word154_0_1

def word154_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def word154_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_2 word154_0_3

def word154_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 122 (Flapjack.WordLangAddr.addr 122 0#64))

def word154_0_6 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_4 word154_0_5

def word154_0_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 2#64])

def word154_0_8 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_6 word154_0_7

def word154_0_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 76 (Flapjack.WordLangAddr.addr 76 0#64))

def word154_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_8 word154_0_9

def word154_0_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 168
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 3#64])

def word154_0_12 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_10 word154_0_11

def word154_0_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 168 (Flapjack.WordLangAddr.addr 168 0#64))

def word154_0_14 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_12 word154_0_13

def word154_0_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 122)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 76)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 168])

def word154_0_16 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_14 word154_0_15

def word154_0_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64])

def word154_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_16 word154_0_17

def word154_0_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 110 (Flapjack.WordLangAddr.addr 110 0#64))

def word154_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_18 word154_0_19

def word154_0_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 1#64])

def word154_0_22 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_20 word154_0_21

def word154_0_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 64 (Flapjack.WordLangAddr.addr 64 0#64))

def word154_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_22 word154_0_23

def word154_0_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 2#64])

def word154_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_24 word154_0_25

def word154_0_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 156 (Flapjack.WordLangAddr.addr 156 0#64))

def word154_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_26 word154_0_27

def word154_0_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 3#64])

def word154_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_28 word154_0_29

def word154_0_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 42 (Flapjack.WordLangAddr.addr 42 0#64))

def word154_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_30 word154_0_31

def word154_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 110)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 64)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 156)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 42])

def word154_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_32 word154_0_33

def word154_0_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64])

def word154_0_36 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_34 word154_0_35

def word154_0_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 88 (Flapjack.WordLangAddr.addr 88 0#64))

def word154_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_36 word154_0_37

def word154_0_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 180
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 1#64])

def word154_0_40 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_38 word154_0_39

def word154_0_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 180 (Flapjack.WordLangAddr.addr 180 0#64))

def word154_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_40 word154_0_41

def word154_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 2#64])

def word154_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_42 word154_0_43

def word154_0_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def word154_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_44 word154_0_45

def word154_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 3#64])

def word154_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_46 word154_0_47

def word154_0_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 104 (Flapjack.WordLangAddr.addr 104 0#64))

def word154_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_48 word154_0_49

def word154_0_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 88)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 180)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 104])

def word154_0_52 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_50 word154_0_51

def word154_0_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 12#64])

def word154_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_52 word154_0_53

def word154_0_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 150 (Flapjack.WordLangAddr.addr 150 0#64))

def word154_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_54 word154_0_55

def word154_0_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 12#64, Flapjack.WordLangExpHOL.const 1#64])

def word154_0_58 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_56 word154_0_57

def word154_0_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 36 (Flapjack.WordLangAddr.addr 36 0#64))

def word154_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_58 word154_0_59

def word154_0_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 12#64, Flapjack.WordLangExpHOL.const 2#64])

def word154_0_62 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_60 word154_0_61

def word154_0_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 128 (Flapjack.WordLangAddr.addr 128 0#64))

def word154_0_64 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_62 word154_0_63

def word154_0_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 12#64, Flapjack.WordLangExpHOL.const 3#64])

def word154_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_64 word154_0_65

def word154_0_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 82 (Flapjack.WordLangAddr.addr 82 0#64))

def word154_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_66 word154_0_67

def word154_0_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 150)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 82])

def word154_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_68 word154_0_69

def word154_0_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64])

def word154_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_70 word154_0_71

def word154_0_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 24 (Flapjack.WordLangAddr.addr 24 0#64))

def word154_0_74 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_72 word154_0_73

def word154_0_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64, Flapjack.WordLangExpHOL.const 1#64])

def word154_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_74 word154_0_75

def word154_0_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 116 (Flapjack.WordLangAddr.addr 116 0#64))

def word154_0_78 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_76 word154_0_77

def word154_0_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64, Flapjack.WordLangExpHOL.const 2#64])

def word154_0_80 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_78 word154_0_79

def word154_0_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 70 (Flapjack.WordLangAddr.addr 70 0#64))

def word154_0_82 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_80 word154_0_81

def word154_0_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 162
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64, Flapjack.WordLangExpHOL.const 3#64])

def word154_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_82 word154_0_83

def word154_0_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 162 (Flapjack.WordLangAddr.addr 162 0#64))

def word154_0_86 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_84 word154_0_85

def word154_0_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 162])

def word154_0_88 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_86 word154_0_87

def word154_0_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 20#64])

def word154_0_90 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_88 word154_0_89

def word154_0_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 140 (Flapjack.WordLangAddr.addr 140 0#64))

def word154_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_90 word154_0_91

def word154_0_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 20#64, Flapjack.WordLangExpHOL.const 1#64])

def word154_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_92 word154_0_93

def word154_0_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 94 (Flapjack.WordLangAddr.addr 94 0#64))

def word154_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_94 word154_0_95

def word154_0_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 20#64, Flapjack.WordLangExpHOL.const 2#64])

def word154_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_96 word154_0_97

def word154_0_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 186 (Flapjack.WordLangAddr.addr 186 0#64))

def word154_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_98 word154_0_99

def word154_0_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 20#64, Flapjack.WordLangExpHOL.const 3#64])

def word154_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_100 word154_0_101

def word154_0_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def word154_0_104 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_102 word154_0_103

def word154_0_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 140)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 94)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 186)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 10])

def word154_0_106 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_104 word154_0_105

def word154_0_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64])

def word154_0_108 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_106 word154_0_107

def word154_0_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 56 (Flapjack.WordLangAddr.addr 56 0#64))

def word154_0_110 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_108 word154_0_109

def word154_0_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64, Flapjack.WordLangExpHOL.const 1#64])

def word154_0_112 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_110 word154_0_111

def word154_0_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 148 (Flapjack.WordLangAddr.addr 148 0#64))

def word154_0_114 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_112 word154_0_113

def word154_0_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64, Flapjack.WordLangExpHOL.const 2#64])

def word154_0_116 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_114 word154_0_115

def word154_0_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 34 (Flapjack.WordLangAddr.addr 34 0#64))

def word154_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_116 word154_0_117

def word154_0_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 126
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64, Flapjack.WordLangExpHOL.const 3#64])

def word154_0_120 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_118 word154_0_119

def word154_0_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 126 (Flapjack.WordLangAddr.addr 126 0#64))

def word154_0_122 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_120 word154_0_121

def word154_0_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 56)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 148)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 34)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 126])

def word154_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_122 word154_0_123

def word154_0_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 28#64])

def word154_0_126 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_124 word154_0_125

def word154_0_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 172 (Flapjack.WordLangAddr.addr 172 0#64))

def word154_0_128 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_126 word154_0_127

def word154_0_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 28#64, Flapjack.WordLangExpHOL.const 1#64])

def word154_0_130 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_128 word154_0_129

def word154_0_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 22 (Flapjack.WordLangAddr.addr 22 0#64))

def word154_0_132 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_130 word154_0_131

def word154_0_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 28#64, Flapjack.WordLangExpHOL.const 2#64])

def word154_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_132 word154_0_133

def word154_0_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 114 (Flapjack.WordLangAddr.addr 114 0#64))

def word154_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_134 word154_0_135

def word154_0_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 28#64, Flapjack.WordLangExpHOL.const 3#64])

def word154_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_136 word154_0_137

def word154_0_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 68 (Flapjack.WordLangAddr.addr 68 0#64))

def word154_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_138 word154_0_139

def word154_0_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 172)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 114)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 68])

def word154_0_142 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_140 word154_0_141

def word154_0_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 0#64])

def word154_0_144 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_142 word154_0_143

def word154_0_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 46 (Flapjack.WordLangAddr.addr 46 0#64))

def word154_0_146 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_144 word154_0_145

def word154_0_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def word154_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_146 word154_0_147

def word154_0_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 138 (Flapjack.WordLangAddr.addr 138 0#64))

def word154_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_148 word154_0_149

def word154_0_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 2#64])

def word154_0_152 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_150 word154_0_151

def word154_0_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 92 (Flapjack.WordLangAddr.addr 92 0#64))

def word154_0_154 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_152 word154_0_153

def word154_0_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 184
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 3#64])

def word154_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_154 word154_0_155

def word154_0_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 184 (Flapjack.WordLangAddr.addr 184 0#64))

def word154_0_158 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_156 word154_0_157

def word154_0_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 46)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 138)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 92)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 184])

def word154_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_158 word154_0_159

def word154_0_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 4#64])

def word154_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_160 word154_0_161

def word154_0_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 108 (Flapjack.WordLangAddr.addr 108 0#64))

def word154_0_164 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_162 word154_0_163

def word154_0_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 1#64])

def word154_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_164 word154_0_165

def word154_0_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 62 (Flapjack.WordLangAddr.addr 62 0#64))

def word154_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_166 word154_0_167

def word154_0_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 2#64])

def word154_0_170 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_168 word154_0_169

def word154_0_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 154 (Flapjack.WordLangAddr.addr 154 0#64))

def word154_0_172 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_170 word154_0_171

def word154_0_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 3#64])

def word154_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_172 word154_0_173

def word154_0_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 40 (Flapjack.WordLangAddr.addr 40 0#64))

def word154_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_174 word154_0_175

def word154_0_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 108)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 62)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 154)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 40])

def word154_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_176 word154_0_177

def word154_0_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64])

def word154_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_178 word154_0_179

def word154_0_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 86 (Flapjack.WordLangAddr.addr 86 0#64))

def word154_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_180 word154_0_181

def word154_0_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 178
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 1#64])

def word154_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_182 word154_0_183

def word154_0_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 178 (Flapjack.WordLangAddr.addr 178 0#64))

def word154_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_184 word154_0_185

def word154_0_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 2#64])

def word154_0_188 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_186 word154_0_187

def word154_0_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 28 (Flapjack.WordLangAddr.addr 28 0#64))

def word154_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_188 word154_0_189

def word154_0_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 3#64])

def word154_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_190 word154_0_191

def word154_0_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 120 (Flapjack.WordLangAddr.addr 120 0#64))

def word154_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_192 word154_0_193

def word154_0_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 86)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 178)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 120])

def word154_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_194 word154_0_195

def word154_0_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 12#64])

def word154_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_196 word154_0_197

def word154_0_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 166 (Flapjack.WordLangAddr.addr 166 0#64))

def word154_0_200 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_198 word154_0_199

def word154_0_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 12#64, Flapjack.WordLangExpHOL.const 1#64])

def word154_0_202 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_200 word154_0_201

def word154_0_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 52 (Flapjack.WordLangAddr.addr 52 0#64))

def word154_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_202 word154_0_203

def word154_0_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 12#64, Flapjack.WordLangExpHOL.const 2#64])

def word154_0_206 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_204 word154_0_205

def word154_0_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 144 (Flapjack.WordLangAddr.addr 144 0#64))

def word154_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_206 word154_0_207

def word154_0_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 12#64, Flapjack.WordLangExpHOL.const 3#64])

def word154_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_208 word154_0_209

def word154_0_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 98 (Flapjack.WordLangAddr.addr 98 0#64))

def word154_0_212 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_210 word154_0_211

def word154_0_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 188
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 166)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 52)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 144)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 98])

def word154_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_212 word154_0_213

def word154_0_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64])

def word154_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_214 word154_0_215

def word154_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def word154_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_216 word154_0_217

def word154_0_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64, Flapjack.WordLangExpHOL.const 1#64])

def word154_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_218 word154_0_219

def word154_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 100 (Flapjack.WordLangAddr.addr 100 0#64))

def word154_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_220 word154_0_221

def word154_0_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64, Flapjack.WordLangExpHOL.const 2#64])

def word154_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_222 word154_0_223

def word154_0_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 54 (Flapjack.WordLangAddr.addr 54 0#64))

def word154_0_226 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_224 word154_0_225

def word154_0_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64, Flapjack.WordLangExpHOL.const 3#64])

def word154_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_226 word154_0_227

def word154_0_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 146 (Flapjack.WordLangAddr.addr 146 0#64))

def word154_0_230 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_228 word154_0_229

def word154_0_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 100)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 54)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 146])

def word154_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_230 word154_0_231

def word154_0_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 20#64])

def word154_0_234 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_232 word154_0_233

def word154_0_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 124 (Flapjack.WordLangAddr.addr 124 0#64))

def word154_0_236 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_234 word154_0_235

def word154_0_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 20#64, Flapjack.WordLangExpHOL.const 1#64])

def word154_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_236 word154_0_237

def word154_0_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 78 (Flapjack.WordLangAddr.addr 78 0#64))

def word154_0_240 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_238 word154_0_239

def word154_0_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 20#64, Flapjack.WordLangExpHOL.const 2#64])

def word154_0_242 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_240 word154_0_241

def word154_0_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 170 (Flapjack.WordLangAddr.addr 170 0#64))

def word154_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_242 word154_0_243

def word154_0_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 20#64, Flapjack.WordLangExpHOL.const 3#64])

def word154_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_244 word154_0_245

def word154_0_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def word154_0_248 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_246 word154_0_247

def word154_0_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 124)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 78)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 170)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 20])

def word154_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_248 word154_0_249

def word154_0_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64])

def word154_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_250 word154_0_251

def word154_0_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 66 (Flapjack.WordLangAddr.addr 66 0#64))

def word154_0_254 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_252 word154_0_253

def word154_0_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64, Flapjack.WordLangExpHOL.const 1#64])

def word154_0_256 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_254 word154_0_255

def word154_0_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 158 (Flapjack.WordLangAddr.addr 158 0#64))

def word154_0_258 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_256 word154_0_257

def word154_0_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64, Flapjack.WordLangExpHOL.const 2#64])

def word154_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_258 word154_0_259

def word154_0_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 44 (Flapjack.WordLangAddr.addr 44 0#64))

def word154_0_262 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_260 word154_0_261

def word154_0_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64, Flapjack.WordLangExpHOL.const 3#64])

def word154_0_264 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_262 word154_0_263

def word154_0_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 136 (Flapjack.WordLangAddr.addr 136 0#64))

def word154_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_264 word154_0_265

def word154_0_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 66)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 158)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 44)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 136])

def word154_0_268 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_266 word154_0_267

def word154_0_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 28#64])

def word154_0_270 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_268 word154_0_269

def word154_0_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 182 (Flapjack.WordLangAddr.addr 182 0#64))

def word154_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_270 word154_0_271

def word154_0_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 28#64, Flapjack.WordLangExpHOL.const 1#64])

def word154_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_272 word154_0_273

def word154_0_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def word154_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_274 word154_0_275

def word154_0_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 28#64, Flapjack.WordLangExpHOL.const 2#64])

def word154_0_278 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_276 word154_0_277

def word154_0_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 106 (Flapjack.WordLangAddr.addr 106 0#64))

def word154_0_280 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_278 word154_0_279

def word154_0_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 28#64, Flapjack.WordLangExpHOL.const 3#64])

def word154_0_282 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_280 word154_0_281

def word154_0_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 60 (Flapjack.WordLangAddr.addr 60 0#64))

def word154_0_284 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_282 word154_0_283

def word154_0_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 182)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 106)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 60])

def word154_0_286 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_284 word154_0_285

def word154_0_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1779033703#64)

def word154_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_286 word154_0_287

def word154_0_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.const 18446744072558718597#64)

def word154_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_288 word154_0_289

def word154_0_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.const 1013904242#64)

def word154_0_292 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_290 word154_0_291

def word154_0_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 176 (Flapjack.WordLangExpHOL.const 18446744072188065082#64)

def word154_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_292 word154_0_293

def word154_0_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1359893119#64)

def word154_0_296 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_294 word154_0_295

def word154_0_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.const 18446744072015407244#64)

def word154_0_298 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_296 word154_0_297

def word154_0_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 528734635#64)

def word154_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_298 word154_0_299

def word154_0_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.const 1541459225#64)

def word154_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_300 word154_0_301

def word154_0_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 1541459225#64, Flapjack.WordLangExpHOL.const 94039765837883179#64,
      Flapjack.WordLangExpHOL.const 528861580#64, Flapjack.WordLangExpHOL.const 1116352408#64,
      Flapjack.WordLangExpHOL.var 18])

def word154_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_302 word154_0_303

def word154_0_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.const 18446744072188065082#64, Flapjack.WordLangExpHOL.var 50])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_304 word154_0_305

def word154_0_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 176 (Flapjack.WordLangExpHOL.var 142)

def word154_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_306 word154_0_307

def word154_0_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 1909852242071041150#64,
          Flapjack.WordLangExpHOL.const 980412007#64])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_308 word154_0_309

def word154_0_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 528734635#64,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.const 18446744072015407244#64,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.const 18446744072804317939#64]],
      Flapjack.WordLangExpHOL.const 1899447441#64, Flapjack.WordLangExpHOL.var 134])

def word154_0_312 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_310 word154_0_311

def word154_0_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.const 1013904242#64, Flapjack.WordLangExpHOL.var 50])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_312 word154_0_313

def word154_0_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 142)

def word154_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_314 word154_0_315

def word154_0_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 50,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                    (Flapjack.WordLangExpHOL.const 2#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                    (Flapjack.WordLangExpHOL.const 30#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                    (Flapjack.WordLangExpHOL.const 13#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                    (Flapjack.WordLangExpHOL.const 19#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                    (Flapjack.WordLangExpHOL.const 22#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                    (Flapjack.WordLangExpHOL.const 10#64)]],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.const 1779033703#64,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.const 1779033703#64],
                  Flapjack.WordLangExpHOL.const 18446744072928250082#64]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_316 word154_0_317

def word154_0_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 18446744072015407244#64,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.const 1359893119#64,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 84,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.const 1359893119#64]]],
      Flapjack.WordLangExpHOL.const 18446744072463907791#64, Flapjack.WordLangExpHOL.var 58])

def word154_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_318 word154_0_319

def word154_0_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.const 18446744072558718597#64, Flapjack.WordLangExpHOL.var 50])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_320 word154_0_321

def word154_0_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 142)

def word154_0_324 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_322 word154_0_323

def word154_0_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 50,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                    (Flapjack.WordLangExpHOL.const 2#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                    (Flapjack.WordLangExpHOL.const 30#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                    (Flapjack.WordLangExpHOL.const 13#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                    (Flapjack.WordLangExpHOL.const 19#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                    (Flapjack.WordLangExpHOL.const 22#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                    (Flapjack.WordLangExpHOL.const 10#64)]],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164],
                  Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.const 1779033703#64]]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_326 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_324 word154_0_325

def word154_0_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 1359893119#64,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 130,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 18446744073335593893#64, Flapjack.WordLangExpHOL.var 174])

def word154_0_328 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_326 word154_0_327

def word154_0_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.const 1779033703#64, Flapjack.WordLangExpHOL.var 50])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_328 word154_0_329

def word154_0_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 142)

def word154_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_330 word154_0_331

def word154_0_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 50,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                    (Flapjack.WordLangExpHOL.const 2#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                    (Flapjack.WordLangExpHOL.const 30#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                    (Flapjack.WordLangExpHOL.const 13#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                    (Flapjack.WordLangExpHOL.const 19#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                    (Flapjack.WordLangExpHOL.const 22#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                    (Flapjack.WordLangExpHOL.const 10#64)]],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 72,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 72],
                  Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164]]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_332 word154_0_333

def word154_0_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 84,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 38,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84]]],
      Flapjack.WordLangExpHOL.const 961987163#64, Flapjack.WordLangExpHOL.var 48])

def word154_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_334 word154_0_335

def word154_0_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 50])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_338 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_336 word154_0_337

def word154_0_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.var 142)

def word154_0_340 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_338 word154_0_339

def word154_0_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 176
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 50,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                    (Flapjack.WordLangExpHOL.const 2#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                    (Flapjack.WordLangExpHOL.const 30#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                    (Flapjack.WordLangExpHOL.const 13#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                    (Flapjack.WordLangExpHOL.const 19#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                    (Flapjack.WordLangExpHOL.const 22#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                    (Flapjack.WordLangExpHOL.const 10#64)]],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 118,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 118],
                  Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 72]]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_342 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_340 word154_0_341

def word154_0_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 84,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 130,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130]]],
      Flapjack.WordLangExpHOL.const 1508970993#64, Flapjack.WordLangExpHOL.var 102])

def word154_0_344 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_342 word154_0_343

def word154_0_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 50])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_344 word154_0_345

def word154_0_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 142)

def word154_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_346 word154_0_347

def word154_0_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 50,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                    (Flapjack.WordLangExpHOL.const 2#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                    (Flapjack.WordLangExpHOL.const 30#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                    (Flapjack.WordLangExpHOL.const 13#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                    (Flapjack.WordLangExpHOL.const 19#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                    (Flapjack.WordLangExpHOL.const 22#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                    (Flapjack.WordLangExpHOL.const 10#64)]],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 26,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 26],
                  Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 118]]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_348 word154_0_349

def word154_0_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 130,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 72,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38]]],
      Flapjack.WordLangExpHOL.const 18446744071868220068#64, Flapjack.WordLangExpHOL.var 80])

def word154_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_350 word154_0_351

def word154_0_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 50])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_352 word154_0_353

def word154_0_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 142)

def word154_0_356 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_354 word154_0_355

def word154_0_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 50,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                    (Flapjack.WordLangExpHOL.const 2#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                    (Flapjack.WordLangExpHOL.const 30#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                    (Flapjack.WordLangExpHOL.const 13#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                    (Flapjack.WordLangExpHOL.const 19#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                    (Flapjack.WordLangExpHOL.const 22#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                    (Flapjack.WordLangExpHOL.const 10#64)]],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176],
                  Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 26]]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_356 word154_0_357

def word154_0_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 118,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164]]],
      Flapjack.WordLangExpHOL.const 18446744072285347541#64, Flapjack.WordLangExpHOL.var 160])

def word154_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_358 word154_0_359

def word154_0_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 50])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_360 word154_0_361

def word154_0_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 142)

def word154_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_362 word154_0_363

def word154_0_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 50,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                    (Flapjack.WordLangExpHOL.const 2#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                    (Flapjack.WordLangExpHOL.const 30#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                    (Flapjack.WordLangExpHOL.const 13#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                    (Flapjack.WordLangExpHOL.const 19#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                    (Flapjack.WordLangExpHOL.const 22#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                    (Flapjack.WordLangExpHOL.const 10#64)]],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 84,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84],
                  Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176]]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_366 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_364 word154_0_365

def word154_0_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 164,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 72,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 26,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 72]]],
      Flapjack.WordLangExpHOL.const 18446744073038965400#64, Flapjack.WordLangExpHOL.var 16])

def word154_0_368 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_366 word154_0_367

def word154_0_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 50])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_368 word154_0_369

def word154_0_371 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_370 word154_0_307

def word154_0_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 50,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                    (Flapjack.WordLangExpHOL.const 2#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                    (Flapjack.WordLangExpHOL.const 30#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                    (Flapjack.WordLangExpHOL.const 13#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                    (Flapjack.WordLangExpHOL.const 19#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                    (Flapjack.WordLangExpHOL.const 22#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                    (Flapjack.WordLangExpHOL.const 10#64)]],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 130,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130],
                  Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84]]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_373 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_371 word154_0_372

def word154_0_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 72,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 118,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 118]]],
      Flapjack.WordLangExpHOL.const 310598401#64, Flapjack.WordLangExpHOL.var 132])

def word154_0_375 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_373 word154_0_374

def word154_0_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 50])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_377 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_375 word154_0_376

def word154_0_378 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_377 word154_0_315

def word154_0_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 50,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                    (Flapjack.WordLangExpHOL.const 2#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                    (Flapjack.WordLangExpHOL.const 30#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                    (Flapjack.WordLangExpHOL.const 13#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                    (Flapjack.WordLangExpHOL.const 19#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                    (Flapjack.WordLangExpHOL.const 22#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                    (Flapjack.WordLangExpHOL.const 10#64)]],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 38,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38],
                  Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130]]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_380 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_378 word154_0_379

def word154_0_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 118,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 26,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 84,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 26]]],
      Flapjack.WordLangExpHOL.const 607225278#64, Flapjack.WordLangExpHOL.var 74])

def word154_0_382 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_380 word154_0_381

def word154_0_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 50])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_384 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_382 word154_0_383

def word154_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_384 word154_0_323

def word154_0_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 50,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                    (Flapjack.WordLangExpHOL.const 2#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                    (Flapjack.WordLangExpHOL.const 30#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                    (Flapjack.WordLangExpHOL.const 13#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                    (Flapjack.WordLangExpHOL.const 19#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                    (Flapjack.WordLangExpHOL.const 22#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                    (Flapjack.WordLangExpHOL.const 10#64)]],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164],
                  Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38]]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_387 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_385 word154_0_386

def word154_0_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 130,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 1426881987#64, Flapjack.WordLangExpHOL.var 188])

def word154_0_389 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_387 word154_0_388

def word154_0_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 50])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_391 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_389 word154_0_390

def word154_0_392 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_391 word154_0_331

def word154_0_393 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_392 word154_0_333

def word154_0_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 84,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 38,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84]]],
      Flapjack.WordLangExpHOL.const 1925078388#64, Flapjack.WordLangExpHOL.var 32])

def word154_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_393 word154_0_394

def word154_0_396 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_395 word154_0_337

def word154_0_397 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_396 word154_0_339

def word154_0_398 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_397 word154_0_341

def word154_0_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 84,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 130,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130]]],
      Flapjack.WordLangExpHOL.const 18446744071576662526#64, Flapjack.WordLangExpHOL.var 112])

def word154_0_400 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_398 word154_0_399

def word154_0_401 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_400 word154_0_345

def word154_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_401 word154_0_347

def word154_0_403 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_402 word154_0_349

def word154_0_404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 130,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 72,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38]]],
      Flapjack.WordLangExpHOL.const 18446744072029472423#64, Flapjack.WordLangExpHOL.var 90])

def word154_0_405 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_403 word154_0_404

def word154_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_405 word154_0_353

def word154_0_407 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_406 word154_0_355

def word154_0_408 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_407 word154_0_357

def word154_0_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 118,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164]]],
      Flapjack.WordLangExpHOL.const 18446744072662806900#64, Flapjack.WordLangExpHOL.var 152])

def word154_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_408 word154_0_409

def word154_0_411 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_410 word154_0_361

def word154_0_412 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_411 word154_0_363

def word154_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_412 word154_0_365

def word154_0_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 18,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 134)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 134)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 134)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 134)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 134)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 132,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 90)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 90)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 90)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 90)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 90)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_413 word154_0_414

def word154_0_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 142)

def word154_0_417 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_415 word154_0_416

def word154_0_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 164,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 72,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 26,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 72]]],
      Flapjack.WordLangExpHOL.const 18446744073249974721#64, Flapjack.WordLangExpHOL.var 18])

def word154_0_419 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_417 word154_0_418

def word154_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_419 word154_0_369

def word154_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_420 word154_0_307

def word154_0_422 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_421 word154_0_372

def word154_0_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 134,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 58)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 58)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 58)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 58)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 58)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 74,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_424 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_422 word154_0_423

def word154_0_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 142)

def word154_0_426 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_424 word154_0_425

def word154_0_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 72,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 118,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 118]]],
      Flapjack.WordLangExpHOL.const 18446744073436809094#64, Flapjack.WordLangExpHOL.var 134])

def word154_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_426 word154_0_427

def word154_0_429 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_428 word154_0_376

def word154_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_429 word154_0_315

def word154_0_431 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_430 word154_0_379

def word154_0_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 58,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 174)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 174)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 174)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 174)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 174)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 188,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 18)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 18)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 18)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_433 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_431 word154_0_432

def word154_0_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 142)

def word154_0_435 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_433 word154_0_434

def word154_0_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 118,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 26,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 84,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 26]]],
      Flapjack.WordLangExpHOL.const 264347078#64, Flapjack.WordLangExpHOL.var 58])

def word154_0_437 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_435 word154_0_436

def word154_0_438 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_437 word154_0_383

def word154_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_438 word154_0_323

def word154_0_440 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_439 word154_0_386

def word154_0_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 174,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 48)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 48)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 48)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 48)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 48)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 32,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 134)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 134)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 134)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 134)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 134)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_440 word154_0_441

def word154_0_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.var 142)

def word154_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_442 word154_0_443

def word154_0_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 130,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 604807628#64, Flapjack.WordLangExpHOL.var 174])

def word154_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_444 word154_0_445

def word154_0_447 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_446 word154_0_390

def word154_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_447 word154_0_331

def word154_0_449 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_448 word154_0_333

def word154_0_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 48,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 102)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 102)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 102)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 102)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 102)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 112,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 58)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 58)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 58)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 58)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 58)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_451 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_449 word154_0_450

def word154_0_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 142)

def word154_0_453 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_451 word154_0_452

def word154_0_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 84,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 38,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84]]],
      Flapjack.WordLangExpHOL.const 770255983#64, Flapjack.WordLangExpHOL.var 48])

def word154_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_453 word154_0_454

def word154_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_455 word154_0_337

def word154_0_457 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_456 word154_0_339

def word154_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_457 word154_0_341

def word154_0_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 102,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 80)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 80)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 80)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 80)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 80)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 90,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 174)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 174)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 174)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 174)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 174)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_460 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_458 word154_0_459

def word154_0_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 142)

def word154_0_462 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_460 word154_0_461

def word154_0_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 84,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 130,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130]]],
      Flapjack.WordLangExpHOL.const 1249150122#64, Flapjack.WordLangExpHOL.var 102])

def word154_0_464 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_462 word154_0_463

def word154_0_465 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_464 word154_0_345

def word154_0_466 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_465 word154_0_347

def word154_0_467 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_466 word154_0_349

def word154_0_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 80,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 160)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 160)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 160)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 160)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 160)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 152,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 48)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 48)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 48)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 48)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 48)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_469 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_467 word154_0_468

def word154_0_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 142)

def word154_0_471 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_469 word154_0_470

def word154_0_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 130,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 72,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38]]],
      Flapjack.WordLangExpHOL.const 1555081692#64, Flapjack.WordLangExpHOL.var 80])

def word154_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_471 word154_0_472

def word154_0_474 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_473 word154_0_353

def word154_0_475 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_474 word154_0_355

def word154_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_475 word154_0_357

def word154_0_477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 160,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 16)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 16)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 16)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 18,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 102)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 102)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 102)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 102)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 102)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_478 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_476 word154_0_477

def word154_0_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160 (Flapjack.WordLangExpHOL.var 142)

def word154_0_480 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_478 word154_0_479

def word154_0_481 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 118,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164]]],
      Flapjack.WordLangExpHOL.const 1996064986#64, Flapjack.WordLangExpHOL.var 160])

def word154_0_482 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_480 word154_0_481

def word154_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_482 word154_0_361

def word154_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_483 word154_0_363

def word154_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_484 word154_0_365

def word154_0_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 16,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 132)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 132)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 132)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 132)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 132)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 134,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 80)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 80)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 80)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 80)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 80)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_485 word154_0_486

def word154_0_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 142)

def word154_0_489 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_487 word154_0_488

def word154_0_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 164,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 72,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 26,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 72]]],
      Flapjack.WordLangExpHOL.const 18446744071968805202#64, Flapjack.WordLangExpHOL.var 16])

def word154_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_489 word154_0_490

def word154_0_492 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_491 word154_0_369

def word154_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_492 word154_0_307

def word154_0_494 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_493 word154_0_372

def word154_0_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 132,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 74)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 74)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 74)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 74)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 74)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 58,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 160)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 160)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 160)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 160)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 160)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_496 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_494 word154_0_495

def word154_0_497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 142)

def word154_0_498 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_496 word154_0_497

def word154_0_499 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 72,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 118,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 118]]],
      Flapjack.WordLangExpHOL.const 18446744072236418669#64, Flapjack.WordLangExpHOL.var 132])

def word154_0_500 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_498 word154_0_499

def word154_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_500 word154_0_376

def word154_0_502 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_501 word154_0_315

def word154_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_502 word154_0_379

def word154_0_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 74,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 188)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 188)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 188)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 188)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 188)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 174,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 16)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 16)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 16)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_503 word154_0_504

def word154_0_506 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 142)

def word154_0_507 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_505 word154_0_506

def word154_0_508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 118,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 26,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 84,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 26]]],
      Flapjack.WordLangExpHOL.const 18446744072367581128#64, Flapjack.WordLangExpHOL.var 74])

def word154_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_507 word154_0_508

def word154_0_510 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_509 word154_0_383

def word154_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_510 word154_0_323

def word154_0_512 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_511 word154_0_386

def word154_0_513 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 188,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 32)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 32)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 32)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 32)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 32)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 48,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 132)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 132)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 132)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 132)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 132)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_514 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_512 word154_0_513

def word154_0_515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 188 (Flapjack.WordLangExpHOL.var 142)

def word154_0_516 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_514 word154_0_515

def word154_0_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 130,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 18446744072624897991#64, Flapjack.WordLangExpHOL.var 188])

def word154_0_518 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_516 word154_0_517

def word154_0_519 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_518 word154_0_390

def word154_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_519 word154_0_331

def word154_0_521 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_520 word154_0_333

def word154_0_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 32,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 112)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 112)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 112)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 112)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 112)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 102,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 74)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 74)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 74)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 74)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 74)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_523 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_521 word154_0_522

def word154_0_524 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 142)

def word154_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_523 word154_0_524

def word154_0_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 84,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 38,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84]]],
      Flapjack.WordLangExpHOL.const 18446744072751156211#64, Flapjack.WordLangExpHOL.var 32])

def word154_0_527 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_525 word154_0_526

def word154_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_527 word154_0_337

def word154_0_529 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_528 word154_0_339

def word154_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_529 word154_0_341

def word154_0_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 112,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 90)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 90)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 90)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 90)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 90)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 80,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 188)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 188)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 188)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 188)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 188)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_530 word154_0_531

def word154_0_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 142)

def word154_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_532 word154_0_533

def word154_0_535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 84,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 130,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130]]],
      Flapjack.WordLangExpHOL.const 18446744072999113031#64, Flapjack.WordLangExpHOL.var 112])

def word154_0_536 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_534 word154_0_535

def word154_0_537 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_536 word154_0_345

def word154_0_538 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_537 word154_0_347

def word154_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_538 word154_0_349

def word154_0_540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 90,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 160,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 32)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 32)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 32)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 32)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 32)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_541 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_539 word154_0_540

def word154_0_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 142)

def word154_0_543 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_541 word154_0_542

def word154_0_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 130,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 72,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38]]],
      Flapjack.WordLangExpHOL.const 113926993#64, Flapjack.WordLangExpHOL.var 90])

def word154_0_545 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_543 word154_0_544

def word154_0_546 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_545 word154_0_353

def word154_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_546 word154_0_355

def word154_0_548 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_547 word154_0_357

def word154_0_549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 152,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 18)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 18)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 18)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 16,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 112)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 112)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 112)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 112)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 112)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_550 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_548 word154_0_549

def word154_0_551 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 142)

def word154_0_552 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_550 word154_0_551

def word154_0_553 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 118,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164]]],
      Flapjack.WordLangExpHOL.const 338241895#64, Flapjack.WordLangExpHOL.var 152])

def word154_0_554 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_552 word154_0_553

def word154_0_555 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_554 word154_0_361

def word154_0_556 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_555 word154_0_363

def word154_0_557 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_556 word154_0_365

def word154_0_558 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_557 word154_0_414

def word154_0_559 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_558 word154_0_416

def word154_0_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 164,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 72,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 26,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 72]]],
      Flapjack.WordLangExpHOL.const 666307205#64, Flapjack.WordLangExpHOL.var 18])

def word154_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_559 word154_0_560

def word154_0_562 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_561 word154_0_369

def word154_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_562 word154_0_307

def word154_0_564 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_563 word154_0_372

def word154_0_565 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_564 word154_0_423

def word154_0_566 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_565 word154_0_425

def word154_0_567 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 72,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 118,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 118]]],
      Flapjack.WordLangExpHOL.const 773529912#64, Flapjack.WordLangExpHOL.var 134])

def word154_0_568 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_566 word154_0_567

def word154_0_569 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_568 word154_0_376

def word154_0_570 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_569 word154_0_315

def word154_0_571 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_570 word154_0_379

def word154_0_572 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_571 word154_0_432

def word154_0_573 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_572 word154_0_434

def word154_0_574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 118,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 26,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 84,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 26]]],
      Flapjack.WordLangExpHOL.const 1294757372#64, Flapjack.WordLangExpHOL.var 58])

def word154_0_575 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_573 word154_0_574

def word154_0_576 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_575 word154_0_383

def word154_0_577 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_576 word154_0_323

def word154_0_578 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_577 word154_0_386

def word154_0_579 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_578 word154_0_441

def word154_0_580 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_579 word154_0_443

def word154_0_581 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 130,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 1396182291#64, Flapjack.WordLangExpHOL.var 174])

def word154_0_582 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_580 word154_0_581

def word154_0_583 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_582 word154_0_390

def word154_0_584 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_583 word154_0_331

def word154_0_585 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_584 word154_0_333

def word154_0_586 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_585 word154_0_450

def word154_0_587 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_586 word154_0_452

def word154_0_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 84,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 38,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84]]],
      Flapjack.WordLangExpHOL.const 1695183700#64, Flapjack.WordLangExpHOL.var 48])

def word154_0_589 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_587 word154_0_588

def word154_0_590 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_589 word154_0_337

def word154_0_591 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_590 word154_0_339

def word154_0_592 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_591 word154_0_341

def word154_0_593 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_592 word154_0_459

def word154_0_594 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_593 word154_0_461

def word154_0_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 84,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 130,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130]]],
      Flapjack.WordLangExpHOL.const 1986661051#64, Flapjack.WordLangExpHOL.var 102])

def word154_0_596 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_594 word154_0_595

def word154_0_597 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_596 word154_0_345

def word154_0_598 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_597 word154_0_347

def word154_0_599 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_598 word154_0_349

def word154_0_600 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_599 word154_0_468

def word154_0_601 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_600 word154_0_470

def word154_0_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 130,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 72,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38]]],
      Flapjack.WordLangExpHOL.const 18446744071591610670#64, Flapjack.WordLangExpHOL.var 80])

def word154_0_603 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_601 word154_0_602

def word154_0_604 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_603 word154_0_353

def word154_0_605 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_604 word154_0_355

def word154_0_606 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_605 word154_0_357

def word154_0_607 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_606 word154_0_477

def word154_0_608 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_607 word154_0_479

def word154_0_609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 118,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164]]],
      Flapjack.WordLangExpHOL.const 18446744071871540357#64, Flapjack.WordLangExpHOL.var 160])

def word154_0_610 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_608 word154_0_609

def word154_0_611 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_610 word154_0_361

def word154_0_612 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_611 word154_0_363

def word154_0_613 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_612 word154_0_365

def word154_0_614 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_613 word154_0_486

def word154_0_615 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_614 word154_0_488

def word154_0_616 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 164,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 72,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 26,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 72]]],
      Flapjack.WordLangExpHOL.const 18446744072145070241#64, Flapjack.WordLangExpHOL.var 16])

def word154_0_617 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_615 word154_0_616

def word154_0_618 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_617 word154_0_369

def word154_0_619 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_618 word154_0_307

def word154_0_620 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_619 word154_0_372

def word154_0_621 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_620 word154_0_495

def word154_0_622 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_621 word154_0_497

def word154_0_623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 72,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 118,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 118]]],
      Flapjack.WordLangExpHOL.const 18446744072234886731#64, Flapjack.WordLangExpHOL.var 132])

def word154_0_624 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_622 word154_0_623

def word154_0_625 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_624 word154_0_376

def word154_0_626 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_625 word154_0_315

def word154_0_627 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_626 word154_0_379

def word154_0_628 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_627 word154_0_504

def word154_0_629 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_628 word154_0_506

def word154_0_630 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 118,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 26,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 84,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 26]]],
      Flapjack.WordLangExpHOL.const 18446744072674315120#64, Flapjack.WordLangExpHOL.var 74])

def word154_0_631 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_629 word154_0_630

def word154_0_632 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_631 word154_0_383

def word154_0_633 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_632 word154_0_323

def word154_0_634 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_633 word154_0_386

def word154_0_635 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_634 word154_0_513

def word154_0_636 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_635 word154_0_515

def word154_0_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 130,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 18446744072760349091#64, Flapjack.WordLangExpHOL.var 188])

def word154_0_638 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_636 word154_0_637

def word154_0_639 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_638 word154_0_390

def word154_0_640 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_639 word154_0_331

def word154_0_641 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_640 word154_0_333

def word154_0_642 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_641 word154_0_522

def word154_0_643 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_642 word154_0_524

def word154_0_644 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 84,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 38,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84]]],
      Flapjack.WordLangExpHOL.const 18446744072930650137#64, Flapjack.WordLangExpHOL.var 32])

def word154_0_645 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_643 word154_0_644

def word154_0_646 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_645 word154_0_337

def word154_0_647 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_646 word154_0_339

def word154_0_648 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_647 word154_0_341

def word154_0_649 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_648 word154_0_531

def word154_0_650 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_649 word154_0_533

def word154_0_651 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 84,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 130,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130]]],
      Flapjack.WordLangExpHOL.const 18446744073014937124#64, Flapjack.WordLangExpHOL.var 112])

def word154_0_652 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_650 word154_0_651

def word154_0_653 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_652 word154_0_345

def word154_0_654 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_653 word154_0_347

def word154_0_655 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_654 word154_0_349

def word154_0_656 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_655 word154_0_540

def word154_0_657 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_656 word154_0_542

def word154_0_658 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 130,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 72,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38]]],
      Flapjack.WordLangExpHOL.const 18446744073509156229#64, Flapjack.WordLangExpHOL.var 90])

def word154_0_659 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_657 word154_0_658

def word154_0_660 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_659 word154_0_353

def word154_0_661 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_660 word154_0_355

def word154_0_662 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_661 word154_0_357

def word154_0_663 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_662 word154_0_549

def word154_0_664 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_663 word154_0_551

def word154_0_665 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 118,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164]]],
      Flapjack.WordLangExpHOL.const 275423344#64, Flapjack.WordLangExpHOL.var 152])

def word154_0_666 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_664 word154_0_665

def word154_0_667 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_666 word154_0_361

def word154_0_668 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_667 word154_0_363

def word154_0_669 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_668 word154_0_365

def word154_0_670 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_669 word154_0_414

def word154_0_671 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_670 word154_0_416

def word154_0_672 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 164,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 72,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 26,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 72]]],
      Flapjack.WordLangExpHOL.const 430227734#64, Flapjack.WordLangExpHOL.var 18])

def word154_0_673 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_671 word154_0_672

def word154_0_674 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_673 word154_0_369

def word154_0_675 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_674 word154_0_307

def word154_0_676 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_675 word154_0_372

def word154_0_677 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_676 word154_0_423

def word154_0_678 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_677 word154_0_425

def word154_0_679 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 72,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 118,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 118]]],
      Flapjack.WordLangExpHOL.const 506948616#64, Flapjack.WordLangExpHOL.var 134])

def word154_0_680 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_678 word154_0_679

def word154_0_681 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_680 word154_0_376

def word154_0_682 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_681 word154_0_315

def word154_0_683 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_682 word154_0_379

def word154_0_684 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_683 word154_0_432

def word154_0_685 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_684 word154_0_434

def word154_0_686 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 118,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 26,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 84,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 26]]],
      Flapjack.WordLangExpHOL.const 659060556#64, Flapjack.WordLangExpHOL.var 58])

def word154_0_687 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_685 word154_0_686

def word154_0_688 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_687 word154_0_383

def word154_0_689 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_688 word154_0_323

def word154_0_690 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_689 word154_0_386

def word154_0_691 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_690 word154_0_441

def word154_0_692 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_691 word154_0_443

def word154_0_693 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 130,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 883997877#64, Flapjack.WordLangExpHOL.var 174])

def word154_0_694 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_692 word154_0_693

def word154_0_695 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_694 word154_0_390

def word154_0_696 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_695 word154_0_331

def word154_0_697 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_696 word154_0_333

def word154_0_698 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_697 word154_0_450

def word154_0_699 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_698 word154_0_452

def word154_0_700 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 84,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 38,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84]]],
      Flapjack.WordLangExpHOL.const 958139571#64, Flapjack.WordLangExpHOL.var 48])

def word154_0_701 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_699 word154_0_700

def word154_0_702 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_701 word154_0_337

def word154_0_703 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_702 word154_0_339

def word154_0_704 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_703 word154_0_341

def word154_0_705 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_704 word154_0_459

def word154_0_706 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_705 word154_0_461

def word154_0_707 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 84,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 130,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130]]],
      Flapjack.WordLangExpHOL.const 1322822218#64, Flapjack.WordLangExpHOL.var 102])

def word154_0_708 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_706 word154_0_707

def word154_0_709 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_708 word154_0_345

def word154_0_710 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_709 word154_0_347

def word154_0_711 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_710 word154_0_349

def word154_0_712 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_711 word154_0_468

def word154_0_713 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_712 word154_0_470

def word154_0_714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 130,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 72,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38]]],
      Flapjack.WordLangExpHOL.const 1537002063#64, Flapjack.WordLangExpHOL.var 80])

def word154_0_715 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_713 word154_0_714

def word154_0_716 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_715 word154_0_353

def word154_0_717 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_716 word154_0_355

def word154_0_718 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_717 word154_0_357

def word154_0_719 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_718 word154_0_477

def word154_0_720 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_719 word154_0_479

def word154_0_721 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 118,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164]]],
      Flapjack.WordLangExpHOL.const 1747873779#64, Flapjack.WordLangExpHOL.var 160])

def word154_0_722 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_720 word154_0_721

def word154_0_723 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_722 word154_0_361

def word154_0_724 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_723 word154_0_363

def word154_0_725 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_724 word154_0_365

def word154_0_726 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_725 word154_0_486

def word154_0_727 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_726 word154_0_488

def word154_0_728 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 164,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 72,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 26,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 72]]],
      Flapjack.WordLangExpHOL.const 1955562222#64, Flapjack.WordLangExpHOL.var 16])

def word154_0_729 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_727 word154_0_728

def word154_0_730 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_729 word154_0_369

def word154_0_731 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_730 word154_0_307

def word154_0_732 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_731 word154_0_372

def word154_0_733 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_732 word154_0_495

def word154_0_734 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_733 word154_0_497

def word154_0_735 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 72,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 118,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 118]]],
      Flapjack.WordLangExpHOL.const 2024104815#64, Flapjack.WordLangExpHOL.var 132])

def word154_0_736 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_734 word154_0_735

def word154_0_737 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_736 word154_0_376

def word154_0_738 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_737 word154_0_315

def word154_0_739 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_738 word154_0_379

def word154_0_740 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_739 word154_0_504

def word154_0_741 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_740 word154_0_506

def word154_0_742 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 118,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 26,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 84,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 26]]],
      Flapjack.WordLangExpHOL.const 18446744071642314772#64, Flapjack.WordLangExpHOL.var 74])

def word154_0_743 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_741 word154_0_742

def word154_0_744 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_743 word154_0_383

def word154_0_745 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_744 word154_0_323

def word154_0_746 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_745 word154_0_386

def word154_0_747 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_746 word154_0_513

def word154_0_748 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_747 word154_0_515

def word154_0_749 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 130,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 18446744071776436744#64, Flapjack.WordLangExpHOL.var 188])

def word154_0_750 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_748 word154_0_749

def word154_0_751 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_750 word154_0_390

def word154_0_752 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_751 word154_0_331

def word154_0_753 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_752 word154_0_333

def word154_0_754 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_753 word154_0_522

def word154_0_755 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_754 word154_0_524

def word154_0_756 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 84,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 38,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84]]],
      Flapjack.WordLangExpHOL.const 18446744071843020794#64, Flapjack.WordLangExpHOL.var 32])

def word154_0_757 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_755 word154_0_756

def word154_0_758 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_757 word154_0_337

def word154_0_759 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_758 word154_0_339

def word154_0_760 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_759 word154_0_341

def word154_0_761 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_760 word154_0_531

def word154_0_762 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_761 word154_0_533

def word154_0_763 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 84,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 130,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130]]],
      Flapjack.WordLangExpHOL.const 18446744072171318507#64, Flapjack.WordLangExpHOL.var 112])

def word154_0_764 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_762 word154_0_763

def word154_0_765 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_764 word154_0_345

def word154_0_766 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_765 word154_0_347

def word154_0_767 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_766 word154_0_349

def word154_0_768 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_767 word154_0_540

def word154_0_769 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_768 word154_0_542

def word154_0_770 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 130,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 72,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38]]],
      Flapjack.WordLangExpHOL.const 18446744072618615799#64, Flapjack.WordLangExpHOL.var 90])

def word154_0_771 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_769 word154_0_770

def word154_0_772 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_771 word154_0_353

def word154_0_773 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_772 word154_0_355

def word154_0_774 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_773 word154_0_357

def word154_0_775 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_774 word154_0_549

def word154_0_776 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_775 word154_0_551

def word154_0_777 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 118,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164]]],
      Flapjack.WordLangExpHOL.const 18446744072743909618#64, Flapjack.WordLangExpHOL.var 152])

def word154_0_778 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_776 word154_0_777

def word154_0_779 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_778 word154_0_361

def word154_0_780 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_779 word154_0_363

def word154_0_781 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_780 word154_0_365

def word154_0_782 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 1779033703#64])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_783 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_781 word154_0_782

def word154_0_784 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 18)

def word154_0_785 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_783 word154_0_784

def word154_0_786 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.const 18446744072558718597#64])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_787 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_785 word154_0_786

def word154_0_788 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 134)

def word154_0_789 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_787 word154_0_788

def word154_0_790 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.const 1013904242#64])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_791 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_789 word154_0_790

def word154_0_792 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 58)

def word154_0_793 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_791 word154_0_792

def word154_0_794 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.const 18446744072188065082#64])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_795 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_793 word154_0_794

def word154_0_796 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 176 (Flapjack.WordLangExpHOL.var 174)

def word154_0_797 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_795 word154_0_796

def word154_0_798 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 1359893119#64])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_799 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_797 word154_0_798

def word154_0_800 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 48)

def word154_0_801 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_799 word154_0_800

def word154_0_802 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.const 18446744072015407244#64])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_803 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_801 word154_0_802

def word154_0_804 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 102)

def word154_0_805 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_803 word154_0_804

def word154_0_806 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.const 528734635#64])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_807 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_805 word154_0_806

def word154_0_808 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 80)

def word154_0_809 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_807 word154_0_808

def word154_0_810 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.const 1541459225#64])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_811 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_809 word154_0_810

def word154_0_812 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.var 160)

def word154_0_813 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_811 word154_0_812

def word154_0_814 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 164,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 72,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 26,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 72]]],
      Flapjack.WordLangExpHOL.const 18446744072678420376#64])

def word154_0_815 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_813 word154_0_814

def word154_0_816 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_815 word154_0_369

def word154_0_817 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_816 word154_0_307

def word154_0_818 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_817 word154_0_372

def word154_0_819 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 72,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 118,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 118]]],
      Flapjack.WordLangExpHOL.const 1899447441#64])

def word154_0_820 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_818 word154_0_819

def word154_0_821 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_820 word154_0_376

def word154_0_822 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_821 word154_0_315

def word154_0_823 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_822 word154_0_379

def word154_0_824 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 118,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 26,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 84,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 26]]],
      Flapjack.WordLangExpHOL.const 18446744072463907791#64])

def word154_0_825 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_823 word154_0_824

def word154_0_826 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_825 word154_0_383

def word154_0_827 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_826 word154_0_323

def word154_0_828 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_827 word154_0_386

def word154_0_829 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 130,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 18446744073335593893#64])

def word154_0_830 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_828 word154_0_829

def word154_0_831 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_830 word154_0_390

def word154_0_832 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_831 word154_0_331

def word154_0_833 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_832 word154_0_333

def word154_0_834 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 84,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 38,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84]]],
      Flapjack.WordLangExpHOL.const 961987163#64])

def word154_0_835 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_833 word154_0_834

def word154_0_836 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_835 word154_0_337

def word154_0_837 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_836 word154_0_339

def word154_0_838 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_837 word154_0_341

def word154_0_839 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 84,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 130,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130]]],
      Flapjack.WordLangExpHOL.const 1508970993#64])

def word154_0_840 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_838 word154_0_839

def word154_0_841 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_840 word154_0_345

def word154_0_842 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_841 word154_0_347

def word154_0_843 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_842 word154_0_349

def word154_0_844 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 130,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 72,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38]]],
      Flapjack.WordLangExpHOL.const 18446744071868220068#64])

def word154_0_845 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_843 word154_0_844

def word154_0_846 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_845 word154_0_353

def word154_0_847 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_846 word154_0_355

def word154_0_848 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_847 word154_0_357

def word154_0_849 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 118,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164]]],
      Flapjack.WordLangExpHOL.const 18446744072285347541#64])

def word154_0_850 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_848 word154_0_849

def word154_0_851 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_850 word154_0_361

def word154_0_852 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_851 word154_0_363

def word154_0_853 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_852 word154_0_365

def word154_0_854 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 164,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 72,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 26,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 72]]],
      Flapjack.WordLangExpHOL.const 18446744073038965400#64])

def word154_0_855 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_853 word154_0_854

def word154_0_856 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_855 word154_0_369

def word154_0_857 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_856 word154_0_307

def word154_0_858 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_857 word154_0_372

def word154_0_859 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 72,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 118,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 118]]],
      Flapjack.WordLangExpHOL.const 310598401#64])

def word154_0_860 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_858 word154_0_859

def word154_0_861 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_860 word154_0_376

def word154_0_862 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_861 word154_0_315

def word154_0_863 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_862 word154_0_379

def word154_0_864 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 118,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 26,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 84,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 26]]],
      Flapjack.WordLangExpHOL.const 607225278#64])

def word154_0_865 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_863 word154_0_864

def word154_0_866 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_865 word154_0_383

def word154_0_867 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_866 word154_0_323

def word154_0_868 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_867 word154_0_386

def word154_0_869 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 130,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 1426881987#64])

def word154_0_870 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_868 word154_0_869

def word154_0_871 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_870 word154_0_390

def word154_0_872 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_871 word154_0_331

def word154_0_873 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_872 word154_0_333

def word154_0_874 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 84,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 38,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84]]],
      Flapjack.WordLangExpHOL.const 1925078388#64])

def word154_0_875 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_873 word154_0_874

def word154_0_876 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_875 word154_0_337

def word154_0_877 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_876 word154_0_339

def word154_0_878 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_877 word154_0_341

def word154_0_879 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 84,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 130,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130]]],
      Flapjack.WordLangExpHOL.const 18446744071576662526#64])

def word154_0_880 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_878 word154_0_879

def word154_0_881 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_880 word154_0_345

def word154_0_882 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_881 word154_0_347

def word154_0_883 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_882 word154_0_349

def word154_0_884 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 130,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 72,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38]]],
      Flapjack.WordLangExpHOL.const 18446744072029472423#64])

def word154_0_885 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_883 word154_0_884

def word154_0_886 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_885 word154_0_353

def word154_0_887 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_886 word154_0_355

def word154_0_888 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_887 word154_0_357

def word154_0_889 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 118,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164]]],
      Flapjack.WordLangExpHOL.const 18446744072662807412#64])

def word154_0_890 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_888 word154_0_889

def word154_0_891 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_890 word154_0_361

def word154_0_892 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_891 word154_0_363

def word154_0_893 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_892 word154_0_365

def word154_0_894 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 164,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 72,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 26,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 72]]],
      Flapjack.WordLangExpHOL.const 1687906753#64])

def word154_0_895 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_893 word154_0_894

def word154_0_896 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_895 word154_0_369

def word154_0_897 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_896 word154_0_307

def word154_0_898 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_897 word154_0_372

def word154_0_899 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 72,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 118,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 118]]],
      Flapjack.WordLangExpHOL.const 18446744073457780614#64])

def word154_0_900 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_898 word154_0_899

def word154_0_901 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_900 word154_0_376

def word154_0_902 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_901 word154_0_315

def word154_0_903 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_902 word154_0_379

def word154_0_904 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 118,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 26,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 84,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 26]]],
      Flapjack.WordLangExpHOL.const 266464710#64])

def word154_0_905 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_903 word154_0_904

def word154_0_906 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_905 word154_0_383

def word154_0_907 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_906 word154_0_323

def word154_0_908 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_907 word154_0_386

def word154_0_909 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 130,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 604828244#64])

def word154_0_910 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_908 word154_0_909

def word154_0_911 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_910 word154_0_390

def word154_0_912 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_911 word154_0_331

def word154_0_913 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_912 word154_0_333

def word154_0_914 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 84,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 38,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84]]],
      Flapjack.WordLangExpHOL.const 1340683375#64])

def word154_0_915 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_913 word154_0_914

def word154_0_916 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_915 word154_0_337

def word154_0_917 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_916 word154_0_339

def word154_0_918 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_917 word154_0_341

def word154_0_919 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 84,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 130,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130]]],
      Flapjack.WordLangExpHOL.const 1825146046#64])

def word154_0_920 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_918 word154_0_919

def word154_0_921 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_920 word154_0_345

def word154_0_922 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_921 word154_0_347

def word154_0_923 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_922 word154_0_349

def word154_0_924 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 130,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 72,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38]]],
      Flapjack.WordLangExpHOL.const 1639530782#64])

def word154_0_925 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_923 word154_0_924

def word154_0_926 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_925 word154_0_353

def word154_0_927 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_926 word154_0_355

def word154_0_928 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_927 word154_0_357

def word154_0_929 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 118,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164]]],
      Flapjack.WordLangExpHOL.const 385452282#64])

def word154_0_930 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_928 word154_0_929

def word154_0_931 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_930 word154_0_361

def word154_0_932 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_931 word154_0_363

def word154_0_933 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_932 word154_0_365

def word154_0_934 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 164,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 72,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 26,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 72]]],
      Flapjack.WordLangExpHOL.const 18446744073487667538#64])

def word154_0_935 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_933 word154_0_934

def word154_0_936 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_935 word154_0_369

def word154_0_937 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_936 word154_0_307

def word154_0_938 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_937 word154_0_372

def word154_0_939 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 72,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 118,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 118]]],
      Flapjack.WordLangExpHOL.const 18446744072242485869#64])

def word154_0_940 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_938 word154_0_939

def word154_0_941 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_940 word154_0_376

def word154_0_942 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_941 word154_0_315

def word154_0_943 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_942 word154_0_379

def word154_0_944 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 118,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 26,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 84,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 26]]],
      Flapjack.WordLangExpHOL.const 18446744072369077349#64])

def word154_0_945 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_943 word154_0_944

def word154_0_946 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_945 word154_0_383

def word154_0_947 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_946 word154_0_323

def word154_0_948 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_947 word154_0_386

def word154_0_949 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 130,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 18446744072532631239#64])

def word154_0_950 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_948 word154_0_949

def word154_0_951 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_950 word154_0_390

def word154_0_952 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_951 word154_0_331

def word154_0_953 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_952 word154_0_333

def word154_0_954 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 84,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 38,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84]]],
      Flapjack.WordLangExpHOL.const 18446744071999467971#64])

def word154_0_955 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_953 word154_0_954

def word154_0_956 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_955 word154_0_337

def word154_0_957 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_956 word154_0_339

def word154_0_958 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_957 word154_0_341

def word154_0_959 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 84,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 130,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130]]],
      Flapjack.WordLangExpHOL.const 18446744073291098784#64])

def word154_0_960 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_958 word154_0_959

def word154_0_961 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_960 word154_0_345

def word154_0_962 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_961 word154_0_347

def word154_0_963 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_962 word154_0_349

def word154_0_964 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 130,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 72,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38]]],
      Flapjack.WordLangExpHOL.const 18446744073670828843#64])

def word154_0_965 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_963 word154_0_964

def word154_0_966 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_965 word154_0_353

def word154_0_967 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_966 word154_0_355

def word154_0_968 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_967 word154_0_357

def word154_0_969 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 118,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164]]],
      Flapjack.WordLangExpHOL.const 18446744072756739760#64])

def word154_0_970 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_968 word154_0_969

def word154_0_971 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_970 word154_0_361

def word154_0_972 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_971 word154_0_363

def word154_0_973 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_972 word154_0_365

def word154_0_974 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 164,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 72,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 26,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 72]]],
      Flapjack.WordLangExpHOL.const 812235477#64])

def word154_0_975 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_973 word154_0_974

def word154_0_976 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_975 word154_0_369

def word154_0_977 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_976 word154_0_307

def word154_0_978 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_977 word154_0_372

def word154_0_979 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 72,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 118,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 118]]],
      Flapjack.WordLangExpHOL.const 18446744072830283103#64])

def word154_0_980 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_978 word154_0_979

def word154_0_981 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_980 word154_0_376

def word154_0_982 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_981 word154_0_315

def word154_0_983 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_982 word154_0_379

def word154_0_984 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 118,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 26,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 84,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 26]]],
      Flapjack.WordLangExpHOL.const 1510936975#64])

def word154_0_985 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_983 word154_0_984

def word154_0_986 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_985 word154_0_383

def word154_0_987 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_986 word154_0_323

def word154_0_988 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_987 word154_0_386

def word154_0_989 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 130,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 18446744073107599101#64])

def word154_0_990 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_988 word154_0_989

def word154_0_991 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_990 word154_0_390

def word154_0_992 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_991 word154_0_331

def word154_0_993 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_992 word154_0_333

def word154_0_994 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 84,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 38,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84]]],
      Flapjack.WordLangExpHOL.const 171292297#64])

def word154_0_995 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_993 word154_0_994

def word154_0_996 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_995 word154_0_337

def word154_0_997 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_996 word154_0_339

def word154_0_998 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_997 word154_0_341

def word154_0_999 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 84,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 130,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130]]],
      Flapjack.WordLangExpHOL.const 18446744073139878404#64])

def word154_0_1000 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_998 word154_0_999

def word154_0_1001 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1000 word154_0_345

def word154_0_1002 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1001 word154_0_347

def word154_0_1003 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1002 word154_0_349

def word154_0_1004 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 130,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 72,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38]]],
      Flapjack.WordLangExpHOL.const 1492437661#64])

def word154_0_1005 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1003 word154_0_1004

def word154_0_1006 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1005 word154_0_353

def word154_0_1007 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1006 word154_0_355

def word154_0_1008 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1007 word154_0_357

def word154_0_1009 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 118,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164]]],
      Flapjack.WordLangExpHOL.const 18446744073195576086#64])

def word154_0_1010 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1008 word154_0_1009

def word154_0_1011 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1010 word154_0_361

def word154_0_1012 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1011 word154_0_363

def word154_0_1013 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1012 word154_0_365

def word154_0_1014 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 164,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 72,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 26,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 72]]],
      Flapjack.WordLangExpHOL.const 8339078#64])

def word154_0_1015 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1013 word154_0_1014

def word154_0_1016 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1015 word154_0_369

def word154_0_1017 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1016 word154_0_307

def word154_0_1018 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1017 word154_0_372

def word154_0_1019 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 72,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 118,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 118]]],
      Flapjack.WordLangExpHOL.const 923306368#64])

def word154_0_1020 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1018 word154_0_1019

def word154_0_1021 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1020 word154_0_376

def word154_0_1022 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1021 word154_0_315

def word154_0_1023 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1022 word154_0_379

def word154_0_1024 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 118,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 26,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 84,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 26]]],
      Flapjack.WordLangExpHOL.const 18446744072183343666#64])

def word154_0_1025 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1023 word154_0_1024

def word154_0_1026 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1025 word154_0_383

def word154_0_1027 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1026 word154_0_323

def word154_0_1028 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1027 word154_0_386

def word154_0_1029 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 130,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 1873515831#64])

def word154_0_1030 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1028 word154_0_1029

def word154_0_1031 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1030 word154_0_390

def word154_0_1032 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1031 word154_0_331

def word154_0_1033 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1032 word154_0_333

def word154_0_1034 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 84,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 38,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84]]],
      Flapjack.WordLangExpHOL.const 390095120#64])

def word154_0_1035 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1033 word154_0_1034

def word154_0_1036 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1035 word154_0_337

def word154_0_1037 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1036 word154_0_339

def word154_0_1038 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1037 word154_0_341

def word154_0_1039 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 84,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 130,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130]]],
      Flapjack.WordLangExpHOL.const 227333873#64])

def word154_0_1040 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1038 word154_0_1039

def word154_0_1041 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1040 word154_0_345

def word154_0_1042 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1041 word154_0_347

def word154_0_1043 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1042 word154_0_349

def word154_0_1044 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 130,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 72,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38]]],
      Flapjack.WordLangExpHOL.const 18446744072865069933#64])

def word154_0_1045 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1043 word154_0_1044

def word154_0_1046 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1045 word154_0_353

def word154_0_1047 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1046 word154_0_355

def word154_0_1048 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1047 word154_0_357

def word154_0_1049 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 118,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164]]],
      Flapjack.WordLangExpHOL.const 18446744072648113719#64])

def word154_0_1050 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1048 word154_0_1049

def word154_0_1051 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1050 word154_0_361

def word154_0_1052 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1051 word154_0_363

def word154_0_1053 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1052 word154_0_365

def word154_0_1054 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 164,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 72,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 26,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 72]]],
      Flapjack.WordLangExpHOL.const 18446744071618771930#64])

def word154_0_1055 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1053 word154_0_1054

def word154_0_1056 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1055 word154_0_369

def word154_0_1057 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1056 word154_0_307

def word154_0_1058 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1057 word154_0_372

def word154_0_1059 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 72,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 118,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 118]]],
      Flapjack.WordLangExpHOL.const 18446744073093555043#64])

def word154_0_1060 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1058 word154_0_1059

def word154_0_1061 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1060 word154_0_376

def word154_0_1062 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1061 word154_0_315

def word154_0_1063 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1062 word154_0_379

def word154_0_1064 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 118,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 26,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 84,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 26]]],
      Flapjack.WordLangExpHOL.const 184740145#64])

def word154_0_1065 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1063 word154_0_1064

def word154_0_1066 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1065 word154_0_383

def word154_0_1067 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1066 word154_0_323

def word154_0_1068 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1067 word154_0_386

def word154_0_1069 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 130,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 1875991719#64])

def word154_0_1070 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1068 word154_0_1069

def word154_0_1071 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1070 word154_0_390

def word154_0_1072 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1071 word154_0_331

def word154_0_1073 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1072 word154_0_333

def word154_0_1074 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 84,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 38,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84]]],
      Flapjack.WordLangExpHOL.const 1377499850#64])

def word154_0_1075 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1073 word154_0_1074

def word154_0_1076 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1075 word154_0_337

def word154_0_1077 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1076 word154_0_339

def word154_0_1078 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1077 word154_0_341

def word154_0_1079 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 84,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 130,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130]]],
      Flapjack.WordLangExpHOL.const 825459761#64])

def word154_0_1080 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1078 word154_0_1079

def word154_0_1081 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1080 word154_0_345

def word154_0_1082 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1081 word154_0_347

def word154_0_1083 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1082 word154_0_349

def word154_0_1084 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 130,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 72,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38]]],
      Flapjack.WordLangExpHOL.const 1859394197#64])

def word154_0_1085 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1083 word154_0_1084

def word154_0_1086 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1085 word154_0_353

def word154_0_1087 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1086 word154_0_355

def word154_0_1088 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1087 word154_0_357

def word154_0_1089 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 118,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164]]],
      Flapjack.WordLangExpHOL.const 1833138320#64])

def word154_0_1090 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1088 word154_0_1089

def word154_0_1091 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1090 word154_0_361

def word154_0_1092 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1091 word154_0_363

def word154_0_1093 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1092 word154_0_365

def word154_0_1094 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 164,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 72,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 26,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 118, Flapjack.WordLangExpHOL.var 72]]],
      Flapjack.WordLangExpHOL.const 18446744072696402418#64])

def word154_0_1095 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1093 word154_0_1094

def word154_0_1096 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1095 word154_0_369

def word154_0_1097 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1096 word154_0_307

def word154_0_1098 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1097 word154_0_372

def word154_0_1099 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 72,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 176)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 118,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 118]]],
      Flapjack.WordLangExpHOL.const 18446744072078797757#64])

def word154_0_1100 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1098 word154_0_1099

def word154_0_1101 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1100 word154_0_376

def word154_0_1102 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1101 word154_0_315

def word154_0_1103 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1102 word154_0_379

def word154_0_1104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 118,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 26,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 84,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 26]]],
      Flapjack.WordLangExpHOL.const 18446744072464474342#64])

def word154_0_1105 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1103 word154_0_1104

def word154_0_1106 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1105 word154_0_383

def word154_0_1107 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1106 word154_0_323

def word154_0_1108 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1107 word154_0_386

def word154_0_1109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 130,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 1395635772#64])

def word154_0_1110 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1108 word154_0_1109

def word154_0_1111 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1110 word154_0_390

def word154_0_1112 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1111 word154_0_331

def word154_0_1113 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1112 word154_0_333

def word154_0_1114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 84,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 38,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 130, Flapjack.WordLangExpHOL.var 84]]],
      Flapjack.WordLangExpHOL.const 18446744072950858182#64])

def word154_0_1115 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1113 word154_0_1114

def word154_0_1116 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1115 word154_0_337

def word154_0_1117 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1116 word154_0_339

def word154_0_1118 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1117 word154_0_341

def word154_0_1119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 84,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 164)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 130,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 164,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 130]]],
      Flapjack.WordLangExpHOL.const 119766691#64])

def word154_0_1120 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1118 word154_0_1119

def word154_0_1121 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1120 word154_0_345

def word154_0_1122 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1121 word154_0_347

def word154_0_1123 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1122 word154_0_349

def word154_0_1124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 130,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 72,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 164, Flapjack.WordLangExpHOL.var 38]]],
      Flapjack.WordLangExpHOL.const 18446744072175831912#64])

def word154_0_1125 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1123 word154_0_1124

def word154_0_1126 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1125 word154_0_353

def word154_0_1127 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1126 word154_0_355

def word154_0_1128 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1127 word154_0_357

def word154_0_1129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 118,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 164]]],
      Flapjack.WordLangExpHOL.const 1276714358#64])

def word154_0_1130 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1128 word154_0_1129

def word154_0_1131 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1130 word154_0_361

def word154_0_1132 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1131 word154_0_363

def word154_0_1133 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1132 word154_0_365

def word154_0_1134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 38])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_1135 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1133 word154_0_1134

def word154_0_1136 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1135 word154_0_416

def word154_0_1137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 0#64])

def word154_0_1138 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1136 word154_0_1137

def word154_0_1139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 18)
    (Flapjack.WordLangExpHOL.const 24#64))

def word154_0_1140 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1138 word154_0_1139

def word154_0_1141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 96 (Flapjack.WordLangAddr.addr 142 0#64))

def word154_0_1142 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1140 word154_0_1141

def word154_0_1143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 1#64])

def word154_0_1144 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1142 word154_0_1143

def word154_0_1145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 18)
    (Flapjack.WordLangExpHOL.const 16#64))

def word154_0_1146 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1144 word154_0_1145

def word154_0_1147 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1146 word154_0_1141

def word154_0_1148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 2#64])

def word154_0_1149 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1147 word154_0_1148

def word154_0_1150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 18)
    (Flapjack.WordLangExpHOL.const 8#64))

def word154_0_1151 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1149 word154_0_1150

def word154_0_1152 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1151 word154_0_1141

def word154_0_1153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 3#64])

def word154_0_1154 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1152 word154_0_1153

def word154_0_1155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 18)

def word154_0_1156 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1154 word154_0_1155

def word154_0_1157 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1156 word154_0_1141

def word154_0_1158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 134, Flapjack.WordLangExpHOL.var 130])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_1159 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1157 word154_0_1158

def word154_0_1160 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1159 word154_0_425

def word154_0_1161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 4#64])

def word154_0_1162 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1160 word154_0_1161

def word154_0_1163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 134)
    (Flapjack.WordLangExpHOL.const 24#64))

def word154_0_1164 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1162 word154_0_1163

def word154_0_1165 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1164 word154_0_1141

def word154_0_1166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 5#64])

def word154_0_1167 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1165 word154_0_1166

def word154_0_1168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 134)
    (Flapjack.WordLangExpHOL.const 16#64))

def word154_0_1169 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1167 word154_0_1168

def word154_0_1170 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1169 word154_0_1141

def word154_0_1171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 6#64])

def word154_0_1172 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1170 word154_0_1171

def word154_0_1173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 134)
    (Flapjack.WordLangExpHOL.const 8#64))

def word154_0_1174 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1172 word154_0_1173

def word154_0_1175 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1174 word154_0_1141

def word154_0_1176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 7#64])

def word154_0_1177 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1175 word154_0_1176

def word154_0_1178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 134)

def word154_0_1179 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1177 word154_0_1178

def word154_0_1180 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1179 word154_0_1141

def word154_0_1181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.var 84])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_1182 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1180 word154_0_1181

def word154_0_1183 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1182 word154_0_434

def word154_0_1184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64])

def word154_0_1185 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1183 word154_0_1184

def word154_0_1186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 58)
    (Flapjack.WordLangExpHOL.const 24#64))

def word154_0_1187 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1185 word154_0_1186

def word154_0_1188 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1187 word154_0_1141

def word154_0_1189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 9#64])

def word154_0_1190 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1188 word154_0_1189

def word154_0_1191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 58)
    (Flapjack.WordLangExpHOL.const 16#64))

def word154_0_1192 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1190 word154_0_1191

def word154_0_1193 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1192 word154_0_1141

def word154_0_1194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 10#64])

def word154_0_1195 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1193 word154_0_1194

def word154_0_1196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 58)
    (Flapjack.WordLangExpHOL.const 8#64))

def word154_0_1197 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1195 word154_0_1196

def word154_0_1198 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1197 word154_0_1141

def word154_0_1199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 11#64])

def word154_0_1200 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1198 word154_0_1199

def word154_0_1201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 58)

def word154_0_1202 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1200 word154_0_1201

def word154_0_1203 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1202 word154_0_1141

def word154_0_1204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 174, Flapjack.WordLangExpHOL.var 176])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_1205 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1203 word154_0_1204

def word154_0_1206 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1205 word154_0_443

def word154_0_1207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 12#64])

def word154_0_1208 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1206 word154_0_1207

def word154_0_1209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 174)
    (Flapjack.WordLangExpHOL.const 24#64))

def word154_0_1210 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1208 word154_0_1209

def word154_0_1211 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1210 word154_0_1141

def word154_0_1212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 13#64])

def word154_0_1213 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1211 word154_0_1212

def word154_0_1214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 174)
    (Flapjack.WordLangExpHOL.const 16#64))

def word154_0_1215 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1213 word154_0_1214

def word154_0_1216 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1215 word154_0_1141

def word154_0_1217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 14#64])

def word154_0_1218 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1216 word154_0_1217

def word154_0_1219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 174)
    (Flapjack.WordLangExpHOL.const 8#64))

def word154_0_1220 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1218 word154_0_1219

def word154_0_1221 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1220 word154_0_1141

def word154_0_1222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 15#64])

def word154_0_1223 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1221 word154_0_1222

def word154_0_1224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 174)

def word154_0_1225 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1223 word154_0_1224

def word154_0_1226 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1225 word154_0_1141

def word154_0_1227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.var 26])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_1228 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1226 word154_0_1227

def word154_0_1229 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1228 word154_0_452

def word154_0_1230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64])

def word154_0_1231 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1229 word154_0_1230

def word154_0_1232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 48)
    (Flapjack.WordLangExpHOL.const 24#64))

def word154_0_1233 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1231 word154_0_1232

def word154_0_1234 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1233 word154_0_1141

def word154_0_1235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 17#64])

def word154_0_1236 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1234 word154_0_1235

def word154_0_1237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 48)
    (Flapjack.WordLangExpHOL.const 16#64))

def word154_0_1238 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1236 word154_0_1237

def word154_0_1239 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1238 word154_0_1141

def word154_0_1240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 18#64])

def word154_0_1241 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1239 word154_0_1240

def word154_0_1242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 48)
    (Flapjack.WordLangExpHOL.const 8#64))

def word154_0_1243 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1241 word154_0_1242

def word154_0_1244 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1243 word154_0_1141

def word154_0_1245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 19#64])

def word154_0_1246 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1244 word154_0_1245

def word154_0_1247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 48)

def word154_0_1248 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1246 word154_0_1247

def word154_0_1249 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1248 word154_0_1141

def word154_0_1250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 102, Flapjack.WordLangExpHOL.var 118])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_1251 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1249 word154_0_1250

def word154_0_1252 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1251 word154_0_461

def word154_0_1253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 20#64])

def word154_0_1254 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1252 word154_0_1253

def word154_0_1255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 102)
    (Flapjack.WordLangExpHOL.const 24#64))

def word154_0_1256 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1254 word154_0_1255

def word154_0_1257 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1256 word154_0_1141

def word154_0_1258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 21#64])

def word154_0_1259 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1257 word154_0_1258

def word154_0_1260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 102)
    (Flapjack.WordLangExpHOL.const 16#64))

def word154_0_1261 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1259 word154_0_1260

def word154_0_1262 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1261 word154_0_1141

def word154_0_1263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 22#64])

def word154_0_1264 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1262 word154_0_1263

def word154_0_1265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 102)
    (Flapjack.WordLangExpHOL.const 8#64))

def word154_0_1266 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1264 word154_0_1265

def word154_0_1267 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1266 word154_0_1141

def word154_0_1268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 23#64])

def word154_0_1269 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1267 word154_0_1268

def word154_0_1270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 102)

def word154_0_1271 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1269 word154_0_1270

def word154_0_1272 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1271 word154_0_1141

def word154_0_1273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 80, Flapjack.WordLangExpHOL.var 72])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_1274 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1272 word154_0_1273

def word154_0_1275 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1274 word154_0_470

def word154_0_1276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 24#64])

def word154_0_1277 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1275 word154_0_1276

def word154_0_1278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 80)
    (Flapjack.WordLangExpHOL.const 24#64))

def word154_0_1279 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1277 word154_0_1278

def word154_0_1280 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1279 word154_0_1141

def word154_0_1281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 25#64])

def word154_0_1282 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1280 word154_0_1281

def word154_0_1283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 80)
    (Flapjack.WordLangExpHOL.const 16#64))

def word154_0_1284 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1282 word154_0_1283

def word154_0_1285 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1284 word154_0_1141

def word154_0_1286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 26#64])

def word154_0_1287 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1285 word154_0_1286

def word154_0_1288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 80)
    (Flapjack.WordLangExpHOL.const 8#64))

def word154_0_1289 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1287 word154_0_1288

def word154_0_1290 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1289 word154_0_1141

def word154_0_1291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 27#64])

def word154_0_1292 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1290 word154_0_1291

def word154_0_1293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 80)

def word154_0_1294 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1292 word154_0_1293

def word154_0_1295 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1294 word154_0_1141

def word154_0_1296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 160, Flapjack.WordLangExpHOL.var 164])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word154_0_1297 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1295 word154_0_1296

def word154_0_1298 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1297 word154_0_479

def word154_0_1299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 28#64])

def word154_0_1300 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1298 word154_0_1299

def word154_0_1301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 160)
    (Flapjack.WordLangExpHOL.const 24#64))

def word154_0_1302 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1300 word154_0_1301

def word154_0_1303 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1302 word154_0_1141

def word154_0_1304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 29#64])

def word154_0_1305 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1303 word154_0_1304

def word154_0_1306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 160)
    (Flapjack.WordLangExpHOL.const 16#64))

def word154_0_1307 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1305 word154_0_1306

def word154_0_1308 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1307 word154_0_1141

def word154_0_1309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 30#64])

def word154_0_1310 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1308 word154_0_1309

def word154_0_1311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 160)
    (Flapjack.WordLangExpHOL.const 8#64))

def word154_0_1312 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1310 word154_0_1311

def word154_0_1313 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1312 word154_0_1141

def word154_0_1314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 31#64])

def word154_0_1315 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1313 word154_0_1314

def word154_0_1316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 160)

def word154_0_1317 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1315 word154_0_1316

def word154_0_1318 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1317 word154_0_1141

def word154_0_1319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142 (Flapjack.WordLangExpHOL.const 0#64)

def word154_0_1320 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1318 word154_0_1319

def word154_0_1321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [142]

def word154_0_1322 : WordLangProgHOL (BitVec 64) :=
.seq word154_0_1320 word154_0_1321

def pass154_0 : WordLangProgHOL (BitVec 64) :=
word154_0_1322
theorem pass154_0_eq : WordSimp.compileExp (source154.2.2) = pass154_0 := by
  kernel_rfl
#print axioms pass154_0_eq
end InitECandidate.Proofs.WordStages
