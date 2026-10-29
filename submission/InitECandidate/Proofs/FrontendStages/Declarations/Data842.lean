import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify826
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body842_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 60#64)

def body842_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body842_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 576#64)) body842_0 body842_1

def body842_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 24#64]

def body842_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ok" (Flapjack.Exp.const 0#64)

def body842_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0")
        (Flapjack.Exp.const 160#64)])) body842_4 body842_1

def body842_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64],
    Flapjack.Exp.const 24#64]

def body842_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 56#64]]

def body842_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0")
        (Flapjack.Exp.const 256#64)])) body842_4 body842_1

def body842_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 64#64],
    Flapjack.Exp.const 24#64]

def body842_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 88#64]]

def body842_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0")
        (Flapjack.Exp.const 320#64)])) body842_4 body842_1

def body842_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 96#64],
    Flapjack.Exp.const 24#64]

def body842_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 120#64]]

def body842_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0")
        (Flapjack.Exp.const 384#64)])) body842_4 body842_1

def body842_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 128#64],
    Flapjack.Exp.const 24#64]

def body842_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 152#64]]

def body842_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0")
        (Flapjack.Exp.const 512#64)])) body842_4 body842_1

def body842_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 160#64],
    Flapjack.Exp.const 24#64]

def body842_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 184#64]]

def body842_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0") (Flapjack.Exp.const 48#64)])) body842_4 body842_1

def body842_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 256#64],
    Flapjack.Exp.const 24#64]

def body842_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 280#64]]

def body842_23 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0") (Flapjack.Exp.const 32#64)])) body842_4 body842_1

def body842_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 320#64],
    Flapjack.Exp.const 24#64]

def body842_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 344#64]]

def body842_26 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0") (Flapjack.Exp.const 8#64)])) body842_4 body842_1

def body842_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 384#64],
    Flapjack.Exp.const 24#64]

def body842_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 408#64]]

def body842_29 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0") (Flapjack.Exp.const 96#64)])) body842_4 body842_1

def body842_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 512#64],
    Flapjack.Exp.const 24#64]

def body842_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 536#64]]

def body842_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body842_33 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 61#64)

def body842_34 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) body842_33 body842_1

def body842_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 192#64],
    Flapjack.Exp.const 48#64]

def body842_36 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 48#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 288#64],
    Flapjack.Exp.const 32#64]

def body842_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 80#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 352#64],
    Flapjack.Exp.const 8#64]

def body842_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 88#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 416#64],
    Flapjack.Exp.const 96#64]

def body842_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 184#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 544#64],
    Flapjack.Exp.const 8#64]

def body842_40 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body842_41 : Prog (BitVec 64) :=
.seq body842_39 body842_40

def body842_42 : Prog (BitVec 64) :=
.seq body842_38 body842_41

def body842_43 : Prog (BitVec 64) :=
.seq body842_37 body842_42

def body842_44 : Prog (BitVec 64) :=
.seq body842_36 body842_43

def body842_45 : Prog (BitVec 64) :=
.seq body842_35 body842_44

def body842_46 : Prog (BitVec 64) :=
.seq body842_34 body842_45

def body842_47 : Prog (BitVec 64) :=
.seq body842_32 body842_46

def body842_48 : Prog (BitVec 64) :=
.seq body842_26 body842_47

def body842_49 : Prog (BitVec 64) :=
.seq body842_31 body842_48

def body842_50 : Prog (BitVec 64) :=
.seq body842_30 body842_49

def body842_51 : Prog (BitVec 64) :=
.seq body842_29 body842_50

def body842_52 : Prog (BitVec 64) :=
.seq body842_28 body842_51

def body842_53 : Prog (BitVec 64) :=
.seq body842_27 body842_52

def body842_54 : Prog (BitVec 64) :=
.seq body842_26 body842_53

def body842_55 : Prog (BitVec 64) :=
.seq body842_25 body842_54

def body842_56 : Prog (BitVec 64) :=
.seq body842_24 body842_55

def body842_57 : Prog (BitVec 64) :=
.seq body842_23 body842_56

def body842_58 : Prog (BitVec 64) :=
.seq body842_22 body842_57

def body842_59 : Prog (BitVec 64) :=
.seq body842_21 body842_58

def body842_60 : Prog (BitVec 64) :=
.seq body842_20 body842_59

def body842_61 : Prog (BitVec 64) :=
.seq body842_19 body842_60

def body842_62 : Prog (BitVec 64) :=
.seq body842_18 body842_61

def body842_63 : Prog (BitVec 64) :=
.seq body842_17 body842_62

def body842_64 : Prog (BitVec 64) :=
.seq body842_16 body842_63

def body842_65 : Prog (BitVec 64) :=
.seq body842_15 body842_64

def body842_66 : Prog (BitVec 64) :=
.seq body842_14 body842_65

def body842_67 : Prog (BitVec 64) :=
.seq body842_13 body842_66

def body842_68 : Prog (BitVec 64) :=
.seq body842_12 body842_67

def body842_69 : Prog (BitVec 64) :=
.seq body842_11 body842_68

def body842_70 : Prog (BitVec 64) :=
.seq body842_10 body842_69

def body842_71 : Prog (BitVec 64) :=
.seq body842_9 body842_70

def body842_72 : Prog (BitVec 64) :=
.seq body842_8 body842_71

def body842_73 : Prog (BitVec 64) :=
.seq body842_7 body842_72

def body842_74 : Prog (BitVec 64) :=
.seq body842_6 body842_73

def body842_75 : Prog (BitVec 64) :=
.seq body842_5 body842_74

def body842_76 : Prog (BitVec 64) :=
.seq body842_3 body842_75

def body842_77 : Prog (BitVec 64) :=
.decCall ("w0") (Flapjack.Shape.one) ("ld_be64") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 24#64]]) body842_76

def body842_78 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body842_77

def body842_79 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("is_zero_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 24#64]) body842_78

def body842_80 : Prog (BitVec 64) :=
.dec ("ok") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body842_79

def body842_81 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body842_80

def body842_82 : Prog (BitVec 64) :=
.seq body842_2 body842_81

def body842_83 : Prog (BitVec 64) :=
.seq body842_3 body842_5

def body842_84 : Prog (BitVec 64) :=
.seq body842_83 body842_6

def body842_85 : Prog (BitVec 64) :=
.seq body842_84 body842_7

def body842_86 : Prog (BitVec 64) :=
.seq body842_85 body842_8

def body842_87 : Prog (BitVec 64) :=
.seq body842_86 body842_9

def body842_88 : Prog (BitVec 64) :=
.seq body842_87 body842_10

def body842_89 : Prog (BitVec 64) :=
.seq body842_88 body842_11

def body842_90 : Prog (BitVec 64) :=
.seq body842_89 body842_12

def body842_91 : Prog (BitVec 64) :=
.seq body842_90 body842_13

def body842_92 : Prog (BitVec 64) :=
.seq body842_91 body842_14

def body842_93 : Prog (BitVec 64) :=
.seq body842_92 body842_15

def body842_94 : Prog (BitVec 64) :=
.seq body842_93 body842_16

def body842_95 : Prog (BitVec 64) :=
.seq body842_94 body842_17

def body842_96 : Prog (BitVec 64) :=
.seq body842_95 body842_18

def body842_97 : Prog (BitVec 64) :=
.seq body842_96 body842_19

def body842_98 : Prog (BitVec 64) :=
.seq body842_97 body842_20

def body842_99 : Prog (BitVec 64) :=
.seq body842_98 body842_21

def body842_100 : Prog (BitVec 64) :=
.seq body842_99 body842_22

def body842_101 : Prog (BitVec 64) :=
.seq body842_100 body842_23

def body842_102 : Prog (BitVec 64) :=
.seq body842_101 body842_24

def body842_103 : Prog (BitVec 64) :=
.seq body842_102 body842_25

def body842_104 : Prog (BitVec 64) :=
.seq body842_103 body842_26

def body842_105 : Prog (BitVec 64) :=
.seq body842_104 body842_27

def body842_106 : Prog (BitVec 64) :=
.seq body842_105 body842_28

def body842_107 : Prog (BitVec 64) :=
.seq body842_106 body842_29

def body842_108 : Prog (BitVec 64) :=
.seq body842_107 body842_30

def body842_109 : Prog (BitVec 64) :=
.seq body842_108 body842_31

def body842_110 : Prog (BitVec 64) :=
.seq body842_109 body842_26

def body842_111 : Prog (BitVec 64) :=
.seq body842_110 body842_32

def body842_112 : Prog (BitVec 64) :=
.seq body842_111 body842_34

def body842_113 : Prog (BitVec 64) :=
.seq body842_112 body842_35

def body842_114 : Prog (BitVec 64) :=
.seq body842_113 body842_36

def body842_115 : Prog (BitVec 64) :=
.seq body842_114 body842_37

def body842_116 : Prog (BitVec 64) :=
.seq body842_115 body842_38

def body842_117 : Prog (BitVec 64) :=
.seq body842_116 body842_39

def body842_118 : Prog (BitVec 64) :=
.seq body842_117 body842_40

def body842_119 : Prog (BitVec 64) :=
.decCall ("w0") (Flapjack.Shape.one) ("ld_be64") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 24#64]]) body842_118

def body842_120 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body842_119

def body842_121 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("is_zero_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 24#64]) body842_120

def body842_122 : Prog (BitVec 64) :=
.dec ("ok") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body842_121

def body842_123 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body842_122

def body842_124 : Prog (BitVec 64) :=
.seq body842_2 body842_123

def originalData842 : Decl (BitVec 64) :=
.function { name := "extract_deposit_data", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body842_82, returnShape := (Flapjack.Shape.one) }
def simplifiedData842 : Decl (BitVec 64) :=
.function { name := "extract_deposit_data", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body842_124, returnShape := (Flapjack.Shape.one) }
def original842 := Pancake.PanLang.declToHOL originalData842
def simplified842 := Pancake.PanLang.declToHOL simplifiedData842
end InitECandidate.Proofs.FrontendStages.Declarations
