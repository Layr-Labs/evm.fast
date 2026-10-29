import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source151
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word151_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 0#64])

def word151_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 144 (Flapjack.WordLangAddr.addr 144 0#64))

def word151_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_0 word151_0_1

def word151_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def word151_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_2 word151_0_3

def word151_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 28 (Flapjack.WordLangAddr.addr 28 0#64))

def word151_0_6 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_4 word151_0_5

def word151_0_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 2#64])

def word151_0_8 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_6 word151_0_7

def word151_0_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 120 (Flapjack.WordLangAddr.addr 120 0#64))

def word151_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_8 word151_0_9

def word151_0_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 3#64])

def word151_0_12 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_10 word151_0_11

def word151_0_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 74 (Flapjack.WordLangAddr.addr 74 0#64))

def word151_0_14 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_12 word151_0_13

def word151_0_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 168
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 144)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 120)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 74])

def word151_0_16 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_14 word151_0_15

def word151_0_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 4#64])

def word151_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_16 word151_0_17

def word151_0_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 16 0#64))

def word151_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_18 word151_0_19

def word151_0_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 1#64])

def word151_0_22 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_20 word151_0_21

def word151_0_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 108 (Flapjack.WordLangAddr.addr 108 0#64))

def word151_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_22 word151_0_23

def word151_0_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 2#64])

def word151_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_24 word151_0_25

def word151_0_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 62 (Flapjack.WordLangAddr.addr 62 0#64))

def word151_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_26 word151_0_27

def word151_0_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 3#64])

def word151_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_28 word151_0_29

def word151_0_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 156 (Flapjack.WordLangAddr.addr 156 0#64))

def word151_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_30 word151_0_31

def word151_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 108)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 62)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 156])

def word151_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_32 word151_0_33

def word151_0_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64])

def word151_0_36 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_34 word151_0_35

def word151_0_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 132 (Flapjack.WordLangAddr.addr 132 0#64))

def word151_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_36 word151_0_37

def word151_0_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 1#64])

def word151_0_40 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_38 word151_0_39

def word151_0_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 86 (Flapjack.WordLangAddr.addr 86 0#64))

def word151_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_40 word151_0_41

def word151_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 180
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 2#64])

def word151_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_42 word151_0_43

def word151_0_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 180 (Flapjack.WordLangAddr.addr 180 0#64))

def word151_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_44 word151_0_45

def word151_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 3#64])

def word151_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_46 word151_0_47

def word151_0_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def word151_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_48 word151_0_49

def word151_0_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 132)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 86)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 180)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 10])

def word151_0_52 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_50 word151_0_51

def word151_0_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 12#64])

def word151_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_52 word151_0_53

def word151_0_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 56 (Flapjack.WordLangAddr.addr 56 0#64))

def word151_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_54 word151_0_55

def word151_0_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 12#64, Flapjack.WordLangExpHOL.const 1#64])

def word151_0_58 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_56 word151_0_57

def word151_0_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 150 (Flapjack.WordLangAddr.addr 150 0#64))

def word151_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_58 word151_0_59

def word151_0_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 12#64, Flapjack.WordLangExpHOL.const 2#64])

def word151_0_62 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_60 word151_0_61

def word151_0_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 34 (Flapjack.WordLangAddr.addr 34 0#64))

def word151_0_64 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_62 word151_0_63

def word151_0_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 126
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 12#64, Flapjack.WordLangExpHOL.const 3#64])

def word151_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_64 word151_0_65

def word151_0_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 126 (Flapjack.WordLangAddr.addr 126 0#64))

def word151_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_66 word151_0_67

def word151_0_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 56)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 150)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 34)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 126])

def word151_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_68 word151_0_69

def word151_0_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64])

def word151_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_70 word151_0_71

def word151_0_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 174 (Flapjack.WordLangAddr.addr 174 0#64))

def word151_0_74 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_72 word151_0_73

def word151_0_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64, Flapjack.WordLangExpHOL.const 1#64])

def word151_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_74 word151_0_75

def word151_0_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 22 (Flapjack.WordLangAddr.addr 22 0#64))

def word151_0_78 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_76 word151_0_77

def word151_0_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64, Flapjack.WordLangExpHOL.const 2#64])

def word151_0_80 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_78 word151_0_79

def word151_0_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 114 (Flapjack.WordLangAddr.addr 114 0#64))

def word151_0_82 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_80 word151_0_81

def word151_0_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64, Flapjack.WordLangExpHOL.const 3#64])

def word151_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_82 word151_0_83

def word151_0_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 68 (Flapjack.WordLangAddr.addr 68 0#64))

def word151_0_86 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_84 word151_0_85

def word151_0_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 162
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 174)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 114)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 68])

def word151_0_88 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_86 word151_0_87

def word151_0_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 20#64])

def word151_0_90 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_88 word151_0_89

def word151_0_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 46 (Flapjack.WordLangAddr.addr 46 0#64))

def word151_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_90 word151_0_91

def word151_0_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 20#64, Flapjack.WordLangExpHOL.const 1#64])

def word151_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_92 word151_0_93

def word151_0_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 138 (Flapjack.WordLangAddr.addr 138 0#64))

def word151_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_94 word151_0_95

def word151_0_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 20#64, Flapjack.WordLangExpHOL.const 2#64])

def word151_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_96 word151_0_97

def word151_0_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 92 (Flapjack.WordLangAddr.addr 92 0#64))

def word151_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_98 word151_0_99

def word151_0_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 20#64, Flapjack.WordLangExpHOL.const 3#64])

def word151_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_100 word151_0_101

def word151_0_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 186 (Flapjack.WordLangAddr.addr 186 0#64))

def word151_0_104 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_102 word151_0_103

def word151_0_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 46)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 138)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 92)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 186])

def word151_0_106 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_104 word151_0_105

def word151_0_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64])

def word151_0_108 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_106 word151_0_107

def word151_0_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 100 (Flapjack.WordLangAddr.addr 100 0#64))

def word151_0_110 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_108 word151_0_109

def word151_0_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64, Flapjack.WordLangExpHOL.const 1#64])

def word151_0_112 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_110 word151_0_111

def word151_0_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 54 (Flapjack.WordLangAddr.addr 54 0#64))

def word151_0_114 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_112 word151_0_113

def word151_0_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64, Flapjack.WordLangExpHOL.const 2#64])

def word151_0_116 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_114 word151_0_115

def word151_0_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 148 (Flapjack.WordLangAddr.addr 148 0#64))

def word151_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_116 word151_0_117

def word151_0_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64, Flapjack.WordLangExpHOL.const 3#64])

def word151_0_120 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_118 word151_0_119

def word151_0_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 32 (Flapjack.WordLangAddr.addr 32 0#64))

def word151_0_122 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_120 word151_0_121

def word151_0_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 100)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 54)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 148)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 32])

def word151_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_122 word151_0_123

def word151_0_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 28#64])

def word151_0_126 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_124 word151_0_125

def word151_0_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 78 (Flapjack.WordLangAddr.addr 78 0#64))

def word151_0_128 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_126 word151_0_127

def word151_0_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 28#64, Flapjack.WordLangExpHOL.const 1#64])

def word151_0_130 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_128 word151_0_129

def word151_0_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 172 (Flapjack.WordLangAddr.addr 172 0#64))

def word151_0_132 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_130 word151_0_131

def word151_0_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 28#64, Flapjack.WordLangExpHOL.const 2#64])

def word151_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_132 word151_0_133

def word151_0_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def word151_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_134 word151_0_135

def word151_0_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 28#64, Flapjack.WordLangExpHOL.const 3#64])

def word151_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_136 word151_0_137

def word151_0_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 112 (Flapjack.WordLangAddr.addr 112 0#64))

def word151_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_138 word151_0_139

def word151_0_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 78)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 172)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 20)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 112])

def word151_0_142 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_140 word151_0_141

def word151_0_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64])

def word151_0_144 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_142 word151_0_143

def word151_0_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 160 (Flapjack.WordLangAddr.addr 160 0#64))

def word151_0_146 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_144 word151_0_145

def word151_0_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64, Flapjack.WordLangExpHOL.const 1#64])

def word151_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_146 word151_0_147

def word151_0_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 44 (Flapjack.WordLangAddr.addr 44 0#64))

def word151_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_148 word151_0_149

def word151_0_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64, Flapjack.WordLangExpHOL.const 2#64])

def word151_0_152 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_150 word151_0_151

def word151_0_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 136 (Flapjack.WordLangAddr.addr 136 0#64))

def word151_0_154 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_152 word151_0_153

def word151_0_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64, Flapjack.WordLangExpHOL.const 3#64])

def word151_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_154 word151_0_155

def word151_0_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 90 (Flapjack.WordLangAddr.addr 90 0#64))

def word151_0_158 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_156 word151_0_157

def word151_0_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 184
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 160)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 44)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 136)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 90])

def word151_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_158 word151_0_159

def word151_0_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 36#64])

def word151_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_160 word151_0_161

def word151_0_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def word151_0_164 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_162 word151_0_163

def word151_0_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 1#64])

def word151_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_164 word151_0_165

def word151_0_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 106 (Flapjack.WordLangAddr.addr 106 0#64))

def word151_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_166 word151_0_167

def word151_0_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 2#64])

def word151_0_170 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_168 word151_0_169

def word151_0_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 60 (Flapjack.WordLangAddr.addr 60 0#64))

def word151_0_172 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_170 word151_0_171

def word151_0_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 3#64])

def word151_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_172 word151_0_173

def word151_0_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 154 (Flapjack.WordLangAddr.addr 154 0#64))

def word151_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_174 word151_0_175

def word151_0_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 106)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 154])

def word151_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_176 word151_0_177

def word151_0_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 40#64])

def word151_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_178 word151_0_179

def word151_0_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 130 (Flapjack.WordLangAddr.addr 130 0#64))

def word151_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_180 word151_0_181

def word151_0_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 40#64, Flapjack.WordLangExpHOL.const 1#64])

def word151_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_182 word151_0_183

def word151_0_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 84 (Flapjack.WordLangAddr.addr 84 0#64))

def word151_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_184 word151_0_185

def word151_0_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 178
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 40#64, Flapjack.WordLangExpHOL.const 2#64])

def word151_0_188 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_186 word151_0_187

def word151_0_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 178 (Flapjack.WordLangAddr.addr 178 0#64))

def word151_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_188 word151_0_189

def word151_0_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 40#64, Flapjack.WordLangExpHOL.const 3#64])

def word151_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_190 word151_0_191

def word151_0_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 26 (Flapjack.WordLangAddr.addr 26 0#64))

def word151_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_192 word151_0_193

def word151_0_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 130)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 84)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 178)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 26])

def word151_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_194 word151_0_195

def word151_0_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 44#64])

def word151_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_196 word151_0_197

def word151_0_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 72 (Flapjack.WordLangAddr.addr 72 0#64))

def word151_0_200 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_198 word151_0_199

def word151_0_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 44#64, Flapjack.WordLangExpHOL.const 1#64])

def word151_0_202 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_200 word151_0_201

def word151_0_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 166 (Flapjack.WordLangAddr.addr 166 0#64))

def word151_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_202 word151_0_203

def word151_0_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 44#64, Flapjack.WordLangExpHOL.const 2#64])

def word151_0_206 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_204 word151_0_205

def word151_0_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 50 (Flapjack.WordLangAddr.addr 50 0#64))

def word151_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_206 word151_0_207

def word151_0_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 44#64, Flapjack.WordLangExpHOL.const 3#64])

def word151_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_208 word151_0_209

def word151_0_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 142 (Flapjack.WordLangAddr.addr 142 0#64))

def word151_0_212 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_210 word151_0_211

def word151_0_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 166)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 50)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 142])

def word151_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_212 word151_0_213

def word151_0_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 188
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64])

def word151_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_214 word151_0_215

def word151_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 188 (Flapjack.WordLangAddr.addr 188 0#64))

def word151_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_216 word151_0_217

def word151_0_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64, Flapjack.WordLangExpHOL.const 1#64])

def word151_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_218 word151_0_219

def word151_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def word151_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_220 word151_0_221

def word151_0_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64, Flapjack.WordLangExpHOL.const 2#64])

def word151_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_222 word151_0_223

def word151_0_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 98 (Flapjack.WordLangAddr.addr 98 0#64))

def word151_0_226 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_224 word151_0_225

def word151_0_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64, Flapjack.WordLangExpHOL.const 3#64])

def word151_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_226 word151_0_227

def word151_0_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 52 (Flapjack.WordLangAddr.addr 52 0#64))

def word151_0_230 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_228 word151_0_229

def word151_0_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 188)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 98)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 52])

def word151_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_230 word151_0_231

def word151_0_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 52#64])

def word151_0_234 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_232 word151_0_233

def word151_0_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 30 (Flapjack.WordLangAddr.addr 30 0#64))

def word151_0_236 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_234 word151_0_235

def word151_0_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 52#64, Flapjack.WordLangExpHOL.const 1#64])

def word151_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_236 word151_0_237

def word151_0_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 122 (Flapjack.WordLangAddr.addr 122 0#64))

def word151_0_240 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_238 word151_0_239

def word151_0_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 52#64, Flapjack.WordLangExpHOL.const 2#64])

def word151_0_242 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_240 word151_0_241

def word151_0_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 76 (Flapjack.WordLangAddr.addr 76 0#64))

def word151_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_242 word151_0_243

def word151_0_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 52#64, Flapjack.WordLangExpHOL.const 3#64])

def word151_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_244 word151_0_245

def word151_0_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 170 (Flapjack.WordLangAddr.addr 170 0#64))

def word151_0_248 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_246 word151_0_247

def word151_0_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 122)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 76)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 170])

def word151_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_248 word151_0_249

def word151_0_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 56#64])

def word151_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_250 word151_0_251

def word151_0_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 110 (Flapjack.WordLangAddr.addr 110 0#64))

def word151_0_254 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_252 word151_0_253

def word151_0_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 56#64, Flapjack.WordLangExpHOL.const 1#64])

def word151_0_256 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_254 word151_0_255

def word151_0_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 64 (Flapjack.WordLangAddr.addr 64 0#64))

def word151_0_258 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_256 word151_0_257

def word151_0_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 56#64, Flapjack.WordLangExpHOL.const 2#64])

def word151_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_258 word151_0_259

def word151_0_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 158 (Flapjack.WordLangAddr.addr 158 0#64))

def word151_0_262 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_260 word151_0_261

def word151_0_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 56#64, Flapjack.WordLangExpHOL.const 3#64])

def word151_0_264 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_262 word151_0_263

def word151_0_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 42 (Flapjack.WordLangAddr.addr 42 0#64))

def word151_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_264 word151_0_265

def word151_0_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 110)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 64)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 158)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 42])

def word151_0_268 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_266 word151_0_267

def word151_0_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 60#64])

def word151_0_270 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_268 word151_0_269

def word151_0_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 88 (Flapjack.WordLangAddr.addr 88 0#64))

def word151_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_270 word151_0_271

def word151_0_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 60#64, Flapjack.WordLangExpHOL.const 1#64])

def word151_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_272 word151_0_273

def word151_0_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 182 (Flapjack.WordLangAddr.addr 182 0#64))

def word151_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_274 word151_0_275

def word151_0_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 60#64, Flapjack.WordLangExpHOL.const 2#64])

def word151_0_278 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_276 word151_0_277

def word151_0_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def word151_0_280 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_278 word151_0_279

def word151_0_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 60#64, Flapjack.WordLangExpHOL.const 3#64])

def word151_0_282 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_280 word151_0_281

def word151_0_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 104 (Flapjack.WordLangAddr.addr 104 0#64))

def word151_0_284 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_282 word151_0_283

def word151_0_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 88)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 182)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 104])

def word151_0_286 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_284 word151_0_285

def word151_0_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def word151_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_286 word151_0_287

def word151_0_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def word151_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_288 word151_0_289

def word151_0_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def word151_0_292 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_290 word151_0_291

def word151_0_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def word151_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_292 word151_0_293

def word151_0_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 176
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def word151_0_296 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_294 word151_0_295

def word151_0_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def word151_0_298 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_296 word151_0_297

def word151_0_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def word151_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_298 word151_0_299

def word151_0_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64]))

def word151_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_300 word151_0_301

def word151_0_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 70,
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
        [Flapjack.WordLangExpHOL.var 116,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 116]]],
      Flapjack.WordLangExpHOL.const 1116352408#64, Flapjack.WordLangExpHOL.var 168])

def word151_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_302 word151_0_303

def word151_0_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 82, Flapjack.WordLangExpHOL.var 164])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_304 word151_0_305

def word151_0_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 48)

def word151_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_306 word151_0_307

def word151_0_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                    (Flapjack.WordLangExpHOL.const 2#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                    (Flapjack.WordLangExpHOL.const 30#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                    (Flapjack.WordLangExpHOL.const 13#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                    (Flapjack.WordLangExpHOL.const 19#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                    (Flapjack.WordLangExpHOL.const 22#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                    (Flapjack.WordLangExpHOL.const 10#64)]],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 36,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 152, Flapjack.WordLangExpHOL.var 36],
                  Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 128]]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_308 word151_0_309

def word151_0_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 116,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 24,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 82,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 24]]],
      Flapjack.WordLangExpHOL.const 1899447441#64, Flapjack.WordLangExpHOL.var 40])

def word151_0_312 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_310 word151_0_311

def word151_0_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 128, Flapjack.WordLangExpHOL.var 164])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_312 word151_0_313

def word151_0_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 48)

def word151_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_314 word151_0_315

def word151_0_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                    (Flapjack.WordLangExpHOL.const 2#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                    (Flapjack.WordLangExpHOL.const 30#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                    (Flapjack.WordLangExpHOL.const 13#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                    (Flapjack.WordLangExpHOL.const 19#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                    (Flapjack.WordLangExpHOL.const 22#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                    (Flapjack.WordLangExpHOL.const 10#64)]],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 152,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 70, Flapjack.WordLangExpHOL.var 152],
                  Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 152, Flapjack.WordLangExpHOL.var 36]]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_316 word151_0_317

def word151_0_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 128,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 82, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 18446744072463907791#64, Flapjack.WordLangExpHOL.var 102])

def word151_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_318 word151_0_319

def word151_0_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 164])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_320 word151_0_321

def word151_0_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 48)

def word151_0_324 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_322 word151_0_323

def word151_0_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                    (Flapjack.WordLangExpHOL.const 2#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                    (Flapjack.WordLangExpHOL.const 30#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                    (Flapjack.WordLangExpHOL.const 13#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                    (Flapjack.WordLangExpHOL.const 19#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                    (Flapjack.WordLangExpHOL.const 22#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                    (Flapjack.WordLangExpHOL.const 10#64)]],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 70,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 116, Flapjack.WordLangExpHOL.var 70],
                  Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 70, Flapjack.WordLangExpHOL.var 152]]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_326 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_324 word151_0_325

def word151_0_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 82,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 36,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 128, Flapjack.WordLangExpHOL.var 82]]],
      Flapjack.WordLangExpHOL.const 18446744073335593893#64, Flapjack.WordLangExpHOL.var 80])

def word151_0_328 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_326 word151_0_327

def word151_0_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 152, Flapjack.WordLangExpHOL.var 164])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_328 word151_0_329

def word151_0_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 48)

def word151_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_330 word151_0_331

def word151_0_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 176
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                    (Flapjack.WordLangExpHOL.const 2#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                    (Flapjack.WordLangExpHOL.const 30#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                    (Flapjack.WordLangExpHOL.const 13#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                    (Flapjack.WordLangExpHOL.const 19#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                    (Flapjack.WordLangExpHOL.const 22#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                    (Flapjack.WordLangExpHOL.const 10#64)]],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 116,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 116],
                  Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 116, Flapjack.WordLangExpHOL.var 70]]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_332 word151_0_333

def word151_0_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 82,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 128,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 152,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 128]]],
      Flapjack.WordLangExpHOL.const 961987163#64, Flapjack.WordLangExpHOL.var 162])

def word151_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_334 word151_0_335

def word151_0_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 70, Flapjack.WordLangExpHOL.var 164])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_338 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_336 word151_0_337

def word151_0_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 48)

def word151_0_340 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_338 word151_0_339

def word151_0_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 164,
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
            [Flapjack.WordLangExpHOL.var 24,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 24],
                  Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 116]]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_342 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_340 word151_0_341

def word151_0_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 128,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 36,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 70,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 152, Flapjack.WordLangExpHOL.var 36]]],
      Flapjack.WordLangExpHOL.const 1508970993#64, Flapjack.WordLangExpHOL.var 8])

def word151_0_344 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_342 word151_0_343

def word151_0_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 116, Flapjack.WordLangExpHOL.var 164])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_344 word151_0_345

def word151_0_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 48)

def word151_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_346 word151_0_347

def word151_0_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                    (Flapjack.WordLangExpHOL.const 2#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                    (Flapjack.WordLangExpHOL.const 30#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                    (Flapjack.WordLangExpHOL.const 13#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                    (Flapjack.WordLangExpHOL.const 19#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                    (Flapjack.WordLangExpHOL.const 22#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                    (Flapjack.WordLangExpHOL.const 10#64)]],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 82, Flapjack.WordLangExpHOL.var 176],
                  Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 24]]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_348 word151_0_349

def word151_0_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 36,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 152,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 116,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 70, Flapjack.WordLangExpHOL.var 152]]],
      Flapjack.WordLangExpHOL.const 18446744071868220068#64, Flapjack.WordLangExpHOL.var 124])

def word151_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_350 word151_0_351

def word151_0_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 164])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_352 word151_0_353

def word151_0_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 48)

def word151_0_356 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_354 word151_0_355

def word151_0_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                    (Flapjack.WordLangExpHOL.const 2#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                    (Flapjack.WordLangExpHOL.const 30#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                    (Flapjack.WordLangExpHOL.const 13#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                    (Flapjack.WordLangExpHOL.const 19#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                    (Flapjack.WordLangExpHOL.const 22#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                    (Flapjack.WordLangExpHOL.const 10#64)]],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 82,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 128, Flapjack.WordLangExpHOL.var 82],
                  Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 82, Flapjack.WordLangExpHOL.var 176]]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_356 word151_0_357

def word151_0_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 152,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 70,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 24,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 116, Flapjack.WordLangExpHOL.var 70]]],
      Flapjack.WordLangExpHOL.const 18446744072285347541#64, Flapjack.WordLangExpHOL.var 66])

def word151_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_358 word151_0_359

def word151_0_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 164])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_360 word151_0_361

def word151_0_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 176 (Flapjack.WordLangExpHOL.var 48)

def word151_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_362 word151_0_363

def word151_0_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 164,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                    (Flapjack.WordLangExpHOL.const 2#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                    (Flapjack.WordLangExpHOL.const 30#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                    (Flapjack.WordLangExpHOL.const 13#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                    (Flapjack.WordLangExpHOL.const 19#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                    (Flapjack.WordLangExpHOL.const 22#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                    (Flapjack.WordLangExpHOL.const 10#64)]],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.var 128,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 128],
                  Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                    [Flapjack.WordLangExpHOL.var 128, Flapjack.WordLangExpHOL.var 82]]]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_366 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_364 word151_0_365

def word151_0_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 70,
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
        [Flapjack.WordLangExpHOL.var 116,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 116]]],
      Flapjack.WordLangExpHOL.const 18446744073038965400#64, Flapjack.WordLangExpHOL.var 184])

def word151_0_368 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_366 word151_0_367

def word151_0_369 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_368 word151_0_305

def word151_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_369 word151_0_307

def word151_0_371 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_370 word151_0_309

def word151_0_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 116,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 24,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 82,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 24]]],
      Flapjack.WordLangExpHOL.const 310598401#64, Flapjack.WordLangExpHOL.var 38])

def word151_0_373 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_371 word151_0_372

def word151_0_374 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_373 word151_0_313

def word151_0_375 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_374 word151_0_315

def word151_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_375 word151_0_317

def word151_0_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 128,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 82, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 607225278#64, Flapjack.WordLangExpHOL.var 118])

def word151_0_378 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_376 word151_0_377

def word151_0_379 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_378 word151_0_321

def word151_0_380 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_379 word151_0_323

def word151_0_381 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_380 word151_0_325

def word151_0_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 82,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 36,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 128, Flapjack.WordLangExpHOL.var 82]]],
      Flapjack.WordLangExpHOL.const 1426881987#64, Flapjack.WordLangExpHOL.var 96])

def word151_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_381 word151_0_382

def word151_0_384 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_383 word151_0_329

def word151_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_384 word151_0_331

def word151_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_385 word151_0_333

def word151_0_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 82,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 128,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 152,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 128]]],
      Flapjack.WordLangExpHOL.const 1925078388#64, Flapjack.WordLangExpHOL.var 146])

def word151_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_386 word151_0_387

def word151_0_389 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_388 word151_0_337

def word151_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_389 word151_0_339

def word151_0_391 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_390 word151_0_341

def word151_0_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 128,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 36,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 70,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 152, Flapjack.WordLangExpHOL.var 36]]],
      Flapjack.WordLangExpHOL.const 18446744071576662526#64, Flapjack.WordLangExpHOL.var 18])

def word151_0_393 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_391 word151_0_392

def word151_0_394 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_393 word151_0_345

def word151_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_394 word151_0_347

def word151_0_396 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_395 word151_0_349

def word151_0_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 36,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 152,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 116,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 70, Flapjack.WordLangExpHOL.var 152]]],
      Flapjack.WordLangExpHOL.const 18446744072029472423#64, Flapjack.WordLangExpHOL.var 134])

def word151_0_398 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_396 word151_0_397

def word151_0_399 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_398 word151_0_353

def word151_0_400 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_399 word151_0_355

def word151_0_401 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_400 word151_0_357

def word151_0_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 152,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 70,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 24,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 116, Flapjack.WordLangExpHOL.var 70]]],
      Flapjack.WordLangExpHOL.const 18446744072662806900#64, Flapjack.WordLangExpHOL.var 58])

def word151_0_403 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_401 word151_0_402

def word151_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_403 word151_0_361

def word151_0_405 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_404 word151_0_363

def word151_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_405 word151_0_365

def word151_0_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 168,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 40)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 40)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 40)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 38,
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

def word151_0_408 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_406 word151_0_407

def word151_0_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 168 (Flapjack.WordLangExpHOL.var 48)

def word151_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_408 word151_0_409

def word151_0_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 70,
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
        [Flapjack.WordLangExpHOL.var 116,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 116]]],
      Flapjack.WordLangExpHOL.const 18446744073249974721#64, Flapjack.WordLangExpHOL.var 168])

def word151_0_412 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_410 word151_0_411

def word151_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_412 word151_0_305

def word151_0_414 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_413 word151_0_307

def word151_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_414 word151_0_309

def word151_0_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 40,
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
          Flapjack.WordLangExpHOL.var 118,
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

def word151_0_417 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_415 word151_0_416

def word151_0_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 48)

def word151_0_419 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_417 word151_0_418

def word151_0_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 116,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 24,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 82,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 24]]],
      Flapjack.WordLangExpHOL.const 18446744073436809094#64, Flapjack.WordLangExpHOL.var 40])

def word151_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_419 word151_0_420

def word151_0_422 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_421 word151_0_313

def word151_0_423 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_422 word151_0_315

def word151_0_424 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_423 word151_0_317

def word151_0_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
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
          Flapjack.WordLangExpHOL.var 96,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 168)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 168)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 168)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 168)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 168)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_426 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_424 word151_0_425

def word151_0_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 48)

def word151_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_426 word151_0_427

def word151_0_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 128,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 82, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 264347078#64, Flapjack.WordLangExpHOL.var 102])

def word151_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_428 word151_0_429

def word151_0_431 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_430 word151_0_321

def word151_0_432 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_431 word151_0_323

def word151_0_433 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_432 word151_0_325

def word151_0_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 80,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 162)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 162)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 162)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 162)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 162)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 146,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 40)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 40)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 40)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_435 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_433 word151_0_434

def word151_0_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 48)

def word151_0_437 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_435 word151_0_436

def word151_0_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 82,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 36,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 128, Flapjack.WordLangExpHOL.var 82]]],
      Flapjack.WordLangExpHOL.const 604807628#64, Flapjack.WordLangExpHOL.var 80])

def word151_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_437 word151_0_438

def word151_0_440 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_439 word151_0_329

def word151_0_441 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_440 word151_0_331

def word151_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_441 word151_0_333

def word151_0_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 162,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 8)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 8)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 8)
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

def word151_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_442 word151_0_443

def word151_0_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 162 (Flapjack.WordLangExpHOL.var 48)

def word151_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_444 word151_0_445

def word151_0_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 82,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 128,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 152,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 128]]],
      Flapjack.WordLangExpHOL.const 770255983#64, Flapjack.WordLangExpHOL.var 162])

def word151_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_446 word151_0_447

def word151_0_449 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_448 word151_0_337

def word151_0_450 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_449 word151_0_339

def word151_0_451 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_450 word151_0_341

def word151_0_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 8,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 124)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 124)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 124)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 124)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 124)
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

def word151_0_453 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_451 word151_0_452

def word151_0_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 48)

def word151_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_453 word151_0_454

def word151_0_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 128,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 36,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 70,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 152, Flapjack.WordLangExpHOL.var 36]]],
      Flapjack.WordLangExpHOL.const 1249150122#64, Flapjack.WordLangExpHOL.var 8])

def word151_0_457 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_455 word151_0_456

def word151_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_457 word151_0_345

def word151_0_459 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_458 word151_0_347

def word151_0_460 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_459 word151_0_349

def word151_0_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 124,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 66)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 66)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 66)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 66)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 66)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 58,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 162)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 162)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 162)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 162)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 162)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_462 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_460 word151_0_461

def word151_0_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 48)

def word151_0_464 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_462 word151_0_463

def word151_0_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 36,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 152,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 116,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 70, Flapjack.WordLangExpHOL.var 152]]],
      Flapjack.WordLangExpHOL.const 1555081692#64, Flapjack.WordLangExpHOL.var 124])

def word151_0_466 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_464 word151_0_465

def word151_0_467 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_466 word151_0_353

def word151_0_468 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_467 word151_0_355

def word151_0_469 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_468 word151_0_357

def word151_0_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 66,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 184)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 184)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 184)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 184)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 184)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 168,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 8)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 8)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 8)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_471 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_469 word151_0_470

def word151_0_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 48)

def word151_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_471 word151_0_472

def word151_0_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 152,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 70,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 24,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 116, Flapjack.WordLangExpHOL.var 70]]],
      Flapjack.WordLangExpHOL.const 1996064986#64, Flapjack.WordLangExpHOL.var 66])

def word151_0_475 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_473 word151_0_474

def word151_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_475 word151_0_361

def word151_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_476 word151_0_363

def word151_0_478 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_477 word151_0_365

def word151_0_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 184,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 40,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 124)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 124)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 124)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 124)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 124)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_480 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_478 word151_0_479

def word151_0_481 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 184 (Flapjack.WordLangExpHOL.var 48)

def word151_0_482 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_480 word151_0_481

def word151_0_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 70,
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
        [Flapjack.WordLangExpHOL.var 116,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 116]]],
      Flapjack.WordLangExpHOL.const 18446744071968805202#64, Flapjack.WordLangExpHOL.var 184])

def word151_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_482 word151_0_483

def word151_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_484 word151_0_305

def word151_0_486 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_485 word151_0_307

def word151_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_486 word151_0_309

def word151_0_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 38,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 102,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 66)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 66)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 66)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 66)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 66)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_489 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_487 word151_0_488

def word151_0_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 48)

def word151_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_489 word151_0_490

def word151_0_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 116,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 24,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 82,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 24]]],
      Flapjack.WordLangExpHOL.const 18446744072236418669#64, Flapjack.WordLangExpHOL.var 38])

def word151_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_491 word151_0_492

def word151_0_494 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_493 word151_0_313

def word151_0_495 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_494 word151_0_315

def word151_0_496 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_495 word151_0_317

def word151_0_497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 118,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 96)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 96)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 96)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 96)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 96)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 80,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 184)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 184)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 184)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 184)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 184)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_498 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_496 word151_0_497

def word151_0_499 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 48)

def word151_0_500 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_498 word151_0_499

def word151_0_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 128,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 82, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 18446744072367581128#64, Flapjack.WordLangExpHOL.var 118])

def word151_0_502 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_500 word151_0_501

def word151_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_502 word151_0_321

def word151_0_504 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_503 word151_0_323

def word151_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_504 word151_0_325

def word151_0_506 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 96,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 146)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 146)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 146)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 146)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 146)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 162,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_507 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_505 word151_0_506

def word151_0_508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 48)

def word151_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_507 word151_0_508

def word151_0_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 82,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 36,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 128, Flapjack.WordLangExpHOL.var 82]]],
      Flapjack.WordLangExpHOL.const 18446744072624897991#64, Flapjack.WordLangExpHOL.var 96])

def word151_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_509 word151_0_510

def word151_0_512 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_511 word151_0_329

def word151_0_513 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_512 word151_0_331

def word151_0_514 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_513 word151_0_333

def word151_0_515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 146,
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
          Flapjack.WordLangExpHOL.var 8,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 118)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 118)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_516 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_514 word151_0_515

def word151_0_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.var 48)

def word151_0_518 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_516 word151_0_517

def word151_0_519 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 82,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 128,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 152,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 128]]],
      Flapjack.WordLangExpHOL.const 18446744072751156211#64, Flapjack.WordLangExpHOL.var 146])

def word151_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_518 word151_0_519

def word151_0_521 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_520 word151_0_337

def word151_0_522 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_521 word151_0_339

def word151_0_523 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_522 word151_0_341

def word151_0_524 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
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
          Flapjack.WordLangExpHOL.var 124,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 96)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 96)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 96)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 96)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 96)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_523 word151_0_524

def word151_0_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 48)

def word151_0_527 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_525 word151_0_526

def word151_0_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 128,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 36,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 70,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 152, Flapjack.WordLangExpHOL.var 36]]],
      Flapjack.WordLangExpHOL.const 18446744072999113031#64, Flapjack.WordLangExpHOL.var 18])

def word151_0_529 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_527 word151_0_528

def word151_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_529 word151_0_345

def word151_0_531 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_530 word151_0_347

def word151_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_531 word151_0_349

def word151_0_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
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
          Flapjack.WordLangExpHOL.var 66,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 146)
                    (Flapjack.WordLangExpHOL.const 17#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 146)
                    (Flapjack.WordLangExpHOL.const 15#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 146)
                    (Flapjack.WordLangExpHOL.const 19#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 146)
                    (Flapjack.WordLangExpHOL.const 13#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 146)
                (Flapjack.WordLangExpHOL.const 10#64)]])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_532 word151_0_533

def word151_0_535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 48)

def word151_0_536 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_534 word151_0_535

def word151_0_537 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 36,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 152,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 116,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 70, Flapjack.WordLangExpHOL.var 152]]],
      Flapjack.WordLangExpHOL.const 113926993#64, Flapjack.WordLangExpHOL.var 134])

def word151_0_538 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_536 word151_0_537

def word151_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_538 word151_0_353

def word151_0_540 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_539 word151_0_355

def word151_0_541 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_540 word151_0_357

def word151_0_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 58,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 168)
                    (Flapjack.WordLangExpHOL.const 7#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 168)
                    (Flapjack.WordLangExpHOL.const 25#64)],
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
                [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 168)
                    (Flapjack.WordLangExpHOL.const 18#64),
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 168)
                    (Flapjack.WordLangExpHOL.const 14#64)],
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 168)
                (Flapjack.WordLangExpHOL.const 3#64)],
          Flapjack.WordLangExpHOL.var 184,
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

def word151_0_543 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_541 word151_0_542

def word151_0_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 48)

def word151_0_545 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_543 word151_0_544

def word151_0_546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 152,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 70,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 24,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 116, Flapjack.WordLangExpHOL.var 70]]],
      Flapjack.WordLangExpHOL.const 338241895#64, Flapjack.WordLangExpHOL.var 58])

def word151_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_545 word151_0_546

def word151_0_548 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_547 word151_0_361

def word151_0_549 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_548 word151_0_363

def word151_0_550 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_549 word151_0_365

def word151_0_551 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_550 word151_0_407

def word151_0_552 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_551 word151_0_409

def word151_0_553 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 70,
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
        [Flapjack.WordLangExpHOL.var 116,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 116]]],
      Flapjack.WordLangExpHOL.const 666307205#64, Flapjack.WordLangExpHOL.var 168])

def word151_0_554 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_552 word151_0_553

def word151_0_555 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_554 word151_0_305

def word151_0_556 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_555 word151_0_307

def word151_0_557 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_556 word151_0_309

def word151_0_558 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_557 word151_0_416

def word151_0_559 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_558 word151_0_418

def word151_0_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 116,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 24,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 82,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 24]]],
      Flapjack.WordLangExpHOL.const 773529912#64, Flapjack.WordLangExpHOL.var 40])

def word151_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_559 word151_0_560

def word151_0_562 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_561 word151_0_313

def word151_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_562 word151_0_315

def word151_0_564 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_563 word151_0_317

def word151_0_565 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_564 word151_0_425

def word151_0_566 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_565 word151_0_427

def word151_0_567 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 128,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 82, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 1294757372#64, Flapjack.WordLangExpHOL.var 102])

def word151_0_568 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_566 word151_0_567

def word151_0_569 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_568 word151_0_321

def word151_0_570 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_569 word151_0_323

def word151_0_571 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_570 word151_0_325

def word151_0_572 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_571 word151_0_434

def word151_0_573 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_572 word151_0_436

def word151_0_574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 82,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 36,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 128, Flapjack.WordLangExpHOL.var 82]]],
      Flapjack.WordLangExpHOL.const 1396182291#64, Flapjack.WordLangExpHOL.var 80])

def word151_0_575 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_573 word151_0_574

def word151_0_576 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_575 word151_0_329

def word151_0_577 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_576 word151_0_331

def word151_0_578 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_577 word151_0_333

def word151_0_579 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_578 word151_0_443

def word151_0_580 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_579 word151_0_445

def word151_0_581 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 82,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 128,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 152,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 128]]],
      Flapjack.WordLangExpHOL.const 1695183700#64, Flapjack.WordLangExpHOL.var 162])

def word151_0_582 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_580 word151_0_581

def word151_0_583 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_582 word151_0_337

def word151_0_584 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_583 word151_0_339

def word151_0_585 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_584 word151_0_341

def word151_0_586 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_585 word151_0_452

def word151_0_587 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_586 word151_0_454

def word151_0_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 128,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 36,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 70,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 152, Flapjack.WordLangExpHOL.var 36]]],
      Flapjack.WordLangExpHOL.const 1986661051#64, Flapjack.WordLangExpHOL.var 8])

def word151_0_589 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_587 word151_0_588

def word151_0_590 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_589 word151_0_345

def word151_0_591 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_590 word151_0_347

def word151_0_592 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_591 word151_0_349

def word151_0_593 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_592 word151_0_461

def word151_0_594 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_593 word151_0_463

def word151_0_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 36,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 152,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 116,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 70, Flapjack.WordLangExpHOL.var 152]]],
      Flapjack.WordLangExpHOL.const 18446744071591610670#64, Flapjack.WordLangExpHOL.var 124])

def word151_0_596 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_594 word151_0_595

def word151_0_597 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_596 word151_0_353

def word151_0_598 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_597 word151_0_355

def word151_0_599 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_598 word151_0_357

def word151_0_600 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_599 word151_0_470

def word151_0_601 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_600 word151_0_472

def word151_0_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 152,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 70,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 24,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 116, Flapjack.WordLangExpHOL.var 70]]],
      Flapjack.WordLangExpHOL.const 18446744071871540357#64, Flapjack.WordLangExpHOL.var 66])

def word151_0_603 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_601 word151_0_602

def word151_0_604 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_603 word151_0_361

def word151_0_605 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_604 word151_0_363

def word151_0_606 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_605 word151_0_365

def word151_0_607 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_606 word151_0_479

def word151_0_608 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_607 word151_0_481

def word151_0_609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 70,
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
        [Flapjack.WordLangExpHOL.var 116,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 116]]],
      Flapjack.WordLangExpHOL.const 18446744072145070241#64, Flapjack.WordLangExpHOL.var 184])

def word151_0_610 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_608 word151_0_609

def word151_0_611 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_610 word151_0_305

def word151_0_612 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_611 word151_0_307

def word151_0_613 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_612 word151_0_309

def word151_0_614 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_613 word151_0_488

def word151_0_615 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_614 word151_0_490

def word151_0_616 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 116,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 24,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 82,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 24]]],
      Flapjack.WordLangExpHOL.const 18446744072234886731#64, Flapjack.WordLangExpHOL.var 38])

def word151_0_617 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_615 word151_0_616

def word151_0_618 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_617 word151_0_313

def word151_0_619 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_618 word151_0_315

def word151_0_620 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_619 word151_0_317

def word151_0_621 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_620 word151_0_497

def word151_0_622 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_621 word151_0_499

def word151_0_623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 128,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 82, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 18446744072674315120#64, Flapjack.WordLangExpHOL.var 118])

def word151_0_624 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_622 word151_0_623

def word151_0_625 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_624 word151_0_321

def word151_0_626 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_625 word151_0_323

def word151_0_627 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_626 word151_0_325

def word151_0_628 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_627 word151_0_506

def word151_0_629 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_628 word151_0_508

def word151_0_630 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 82,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 36,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 128, Flapjack.WordLangExpHOL.var 82]]],
      Flapjack.WordLangExpHOL.const 18446744072760349091#64, Flapjack.WordLangExpHOL.var 96])

def word151_0_631 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_629 word151_0_630

def word151_0_632 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_631 word151_0_329

def word151_0_633 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_632 word151_0_331

def word151_0_634 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_633 word151_0_333

def word151_0_635 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_634 word151_0_515

def word151_0_636 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_635 word151_0_517

def word151_0_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 82,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 128,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 152,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 128]]],
      Flapjack.WordLangExpHOL.const 18446744072930650137#64, Flapjack.WordLangExpHOL.var 146])

def word151_0_638 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_636 word151_0_637

def word151_0_639 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_638 word151_0_337

def word151_0_640 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_639 word151_0_339

def word151_0_641 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_640 word151_0_341

def word151_0_642 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_641 word151_0_524

def word151_0_643 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_642 word151_0_526

def word151_0_644 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 128,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 36,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 70,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 152, Flapjack.WordLangExpHOL.var 36]]],
      Flapjack.WordLangExpHOL.const 18446744073014937124#64, Flapjack.WordLangExpHOL.var 18])

def word151_0_645 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_643 word151_0_644

def word151_0_646 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_645 word151_0_345

def word151_0_647 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_646 word151_0_347

def word151_0_648 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_647 word151_0_349

def word151_0_649 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_648 word151_0_533

def word151_0_650 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_649 word151_0_535

def word151_0_651 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 36,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 152,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 116,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 70, Flapjack.WordLangExpHOL.var 152]]],
      Flapjack.WordLangExpHOL.const 18446744073509156229#64, Flapjack.WordLangExpHOL.var 134])

def word151_0_652 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_650 word151_0_651

def word151_0_653 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_652 word151_0_353

def word151_0_654 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_653 word151_0_355

def word151_0_655 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_654 word151_0_357

def word151_0_656 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_655 word151_0_542

def word151_0_657 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_656 word151_0_544

def word151_0_658 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 152,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 70,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 24,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 116, Flapjack.WordLangExpHOL.var 70]]],
      Flapjack.WordLangExpHOL.const 275423344#64, Flapjack.WordLangExpHOL.var 58])

def word151_0_659 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_657 word151_0_658

def word151_0_660 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_659 word151_0_361

def word151_0_661 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_660 word151_0_363

def word151_0_662 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_661 word151_0_365

def word151_0_663 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_662 word151_0_407

def word151_0_664 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_663 word151_0_409

def word151_0_665 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 70,
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
        [Flapjack.WordLangExpHOL.var 116,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 116]]],
      Flapjack.WordLangExpHOL.const 430227734#64, Flapjack.WordLangExpHOL.var 168])

def word151_0_666 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_664 word151_0_665

def word151_0_667 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_666 word151_0_305

def word151_0_668 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_667 word151_0_307

def word151_0_669 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_668 word151_0_309

def word151_0_670 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_669 word151_0_416

def word151_0_671 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_670 word151_0_418

def word151_0_672 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 116,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 24,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 82,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 24]]],
      Flapjack.WordLangExpHOL.const 506948616#64, Flapjack.WordLangExpHOL.var 40])

def word151_0_673 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_671 word151_0_672

def word151_0_674 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_673 word151_0_313

def word151_0_675 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_674 word151_0_315

def word151_0_676 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_675 word151_0_317

def word151_0_677 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_676 word151_0_425

def word151_0_678 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_677 word151_0_427

def word151_0_679 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 128,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 82, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 659060556#64, Flapjack.WordLangExpHOL.var 102])

def word151_0_680 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_678 word151_0_679

def word151_0_681 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_680 word151_0_321

def word151_0_682 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_681 word151_0_323

def word151_0_683 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_682 word151_0_325

def word151_0_684 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_683 word151_0_434

def word151_0_685 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_684 word151_0_436

def word151_0_686 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 82,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 36,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 128, Flapjack.WordLangExpHOL.var 82]]],
      Flapjack.WordLangExpHOL.const 883997877#64, Flapjack.WordLangExpHOL.var 80])

def word151_0_687 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_685 word151_0_686

def word151_0_688 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_687 word151_0_329

def word151_0_689 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_688 word151_0_331

def word151_0_690 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_689 word151_0_333

def word151_0_691 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_690 word151_0_443

def word151_0_692 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_691 word151_0_445

def word151_0_693 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 82,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 128,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 152,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 128]]],
      Flapjack.WordLangExpHOL.const 958139571#64, Flapjack.WordLangExpHOL.var 162])

def word151_0_694 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_692 word151_0_693

def word151_0_695 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_694 word151_0_337

def word151_0_696 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_695 word151_0_339

def word151_0_697 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_696 word151_0_341

def word151_0_698 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_697 word151_0_452

def word151_0_699 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_698 word151_0_454

def word151_0_700 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 128,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 36,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 70,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 152, Flapjack.WordLangExpHOL.var 36]]],
      Flapjack.WordLangExpHOL.const 1322822218#64, Flapjack.WordLangExpHOL.var 8])

def word151_0_701 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_699 word151_0_700

def word151_0_702 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_701 word151_0_345

def word151_0_703 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_702 word151_0_347

def word151_0_704 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_703 word151_0_349

def word151_0_705 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_704 word151_0_461

def word151_0_706 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_705 word151_0_463

def word151_0_707 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 36,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 152,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 116,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 70, Flapjack.WordLangExpHOL.var 152]]],
      Flapjack.WordLangExpHOL.const 1537002063#64, Flapjack.WordLangExpHOL.var 124])

def word151_0_708 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_706 word151_0_707

def word151_0_709 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_708 word151_0_353

def word151_0_710 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_709 word151_0_355

def word151_0_711 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_710 word151_0_357

def word151_0_712 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_711 word151_0_470

def word151_0_713 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_712 word151_0_472

def word151_0_714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 152,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 70,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 24,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 116, Flapjack.WordLangExpHOL.var 70]]],
      Flapjack.WordLangExpHOL.const 1747873779#64, Flapjack.WordLangExpHOL.var 66])

def word151_0_715 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_713 word151_0_714

def word151_0_716 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_715 word151_0_361

def word151_0_717 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_716 word151_0_363

def word151_0_718 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_717 word151_0_365

def word151_0_719 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_718 word151_0_479

def word151_0_720 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_719 word151_0_481

def word151_0_721 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 70,
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
        [Flapjack.WordLangExpHOL.var 116,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 176,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 116]]],
      Flapjack.WordLangExpHOL.const 1955562222#64, Flapjack.WordLangExpHOL.var 184])

def word151_0_722 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_720 word151_0_721

def word151_0_723 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_722 word151_0_305

def word151_0_724 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_723 word151_0_307

def word151_0_725 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_724 word151_0_309

def word151_0_726 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_725 word151_0_488

def word151_0_727 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_726 word151_0_490

def word151_0_728 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 116,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 24,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 82,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 176, Flapjack.WordLangExpHOL.var 24]]],
      Flapjack.WordLangExpHOL.const 2024104815#64, Flapjack.WordLangExpHOL.var 38])

def word151_0_729 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_727 word151_0_728

def word151_0_730 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_729 word151_0_313

def word151_0_731 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_730 word151_0_315

def word151_0_732 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_731 word151_0_317

def word151_0_733 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_732 word151_0_497

def word151_0_734 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_733 word151_0_499

def word151_0_735 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 128)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 176,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 128,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 82, Flapjack.WordLangExpHOL.var 176]]],
      Flapjack.WordLangExpHOL.const 18446744071642314772#64, Flapjack.WordLangExpHOL.var 118])

def word151_0_736 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_734 word151_0_735

def word151_0_737 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_736 word151_0_321

def word151_0_738 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_737 word151_0_323

def word151_0_739 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_738 word151_0_325

def word151_0_740 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_739 word151_0_506

def word151_0_741 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_740 word151_0_508

def word151_0_742 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 176,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 82,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 36,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 128, Flapjack.WordLangExpHOL.var 82]]],
      Flapjack.WordLangExpHOL.const 18446744071776436744#64, Flapjack.WordLangExpHOL.var 96])

def word151_0_743 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_741 word151_0_742

def word151_0_744 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_743 word151_0_329

def word151_0_745 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_744 word151_0_331

def word151_0_746 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_745 word151_0_333

def word151_0_747 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_746 word151_0_515

def word151_0_748 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_747 word151_0_517

def word151_0_749 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 82,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 152)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 128,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 152,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 128]]],
      Flapjack.WordLangExpHOL.const 18446744071843020794#64, Flapjack.WordLangExpHOL.var 146])

def word151_0_750 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_748 word151_0_749

def word151_0_751 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_750 word151_0_337

def word151_0_752 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_751 word151_0_339

def word151_0_753 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_752 word151_0_341

def word151_0_754 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_753 word151_0_524

def word151_0_755 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_754 word151_0_526

def word151_0_756 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 128,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 36,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 70,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 152, Flapjack.WordLangExpHOL.var 36]]],
      Flapjack.WordLangExpHOL.const 18446744072171318507#64, Flapjack.WordLangExpHOL.var 18])

def word151_0_757 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_755 word151_0_756

def word151_0_758 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_757 word151_0_345

def word151_0_759 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_758 word151_0_347

def word151_0_760 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_759 word151_0_349

def word151_0_761 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_760 word151_0_533

def word151_0_762 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_761 word151_0_535

def word151_0_763 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 36,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 116)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 152,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 116,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 70, Flapjack.WordLangExpHOL.var 152]]],
      Flapjack.WordLangExpHOL.const 18446744072618615799#64, Flapjack.WordLangExpHOL.var 134])

def word151_0_764 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_762 word151_0_763

def word151_0_765 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_764 word151_0_353

def word151_0_766 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_765 word151_0_355

def word151_0_767 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_766 word151_0_357

def word151_0_768 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_767 word151_0_542

def word151_0_769 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_768 word151_0_544

def word151_0_770 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 152,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 6#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 26#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 11#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 21#64)],
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 25#64),
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
                (Flapjack.WordLangExpHOL.const 7#64)]],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
        [Flapjack.WordLangExpHOL.var 70,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 24,
              Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
                [Flapjack.WordLangExpHOL.var 116, Flapjack.WordLangExpHOL.var 70]]],
      Flapjack.WordLangExpHOL.const 18446744072743909618#64, Flapjack.WordLangExpHOL.var 58])

def word151_0_771 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_769 word151_0_770

def word151_0_772 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_771 word151_0_361

def word151_0_773 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_772 word151_0_363

def word151_0_774 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_773 word151_0_365

def word151_0_775 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64])

def word151_0_776 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_774 word151_0_775

def word151_0_777 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.load
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]),
          Flapjack.WordLangExpHOL.var 152])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_778 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_776 word151_0_777

def word151_0_779 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 140)

def word151_0_780 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_778 word151_0_779

def word151_0_781 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 48) 94

def word151_0_782 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_780 word151_0_781

def word151_0_783 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64])

def word151_0_784 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_782 word151_0_783

def word151_0_785 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.load
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]),
          Flapjack.WordLangExpHOL.var 36])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_786 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_784 word151_0_785

def word151_0_787 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_786 word151_0_779

def word151_0_788 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_787 word151_0_781

def word151_0_789 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64])

def word151_0_790 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_788 word151_0_789

def word151_0_791 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.load
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]),
          Flapjack.WordLangExpHOL.var 128])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_792 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_790 word151_0_791

def word151_0_793 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_792 word151_0_779

def word151_0_794 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_793 word151_0_781

def word151_0_795 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64])

def word151_0_796 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_794 word151_0_795

def word151_0_797 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.load
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]),
          Flapjack.WordLangExpHOL.var 82])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_798 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_796 word151_0_797

def word151_0_799 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_798 word151_0_779

def word151_0_800 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_799 word151_0_781

def word151_0_801 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64])

def word151_0_802 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_800 word151_0_801

def word151_0_803 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.load
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]),
          Flapjack.WordLangExpHOL.var 176])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_804 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_802 word151_0_803

def word151_0_805 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_804 word151_0_779

def word151_0_806 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_805 word151_0_781

def word151_0_807 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64])

def word151_0_808 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_806 word151_0_807

def word151_0_809 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.load
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]),
          Flapjack.WordLangExpHOL.var 24])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_810 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_808 word151_0_809

def word151_0_811 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_810 word151_0_779

def word151_0_812 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_811 word151_0_781

def word151_0_813 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def word151_0_814 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_812 word151_0_813

def word151_0_815 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.load
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]),
          Flapjack.WordLangExpHOL.var 116])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_816 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_814 word151_0_815

def word151_0_817 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_816 word151_0_779

def word151_0_818 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_817 word151_0_781

def word151_0_819 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64])

def word151_0_820 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_818 word151_0_819

def word151_0_821 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.load
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64]),
          Flapjack.WordLangExpHOL.var 70])
      (Flapjack.WordLangExpHOL.const 32#64))
    (Flapjack.WordLangExpHOL.const 32#64))

def word151_0_822 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_820 word151_0_821

def word151_0_823 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_822 word151_0_779

def word151_0_824 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_823 word151_0_781

def word151_0_825 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def word151_0_826 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_824 word151_0_825

def word151_0_827 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [48]

def word151_0_828 : WordLangProgHOL (BitVec 64) :=
.seq word151_0_826 word151_0_827

def pass151_0 : WordLangProgHOL (BitVec 64) :=
word151_0_828
theorem pass151_0_eq : WordSimp.compileExp (source151.2.2) = pass151_0 := by
  kernel_rfl
#print axioms pass151_0_eq
end InitECandidate.Proofs.WordStages
