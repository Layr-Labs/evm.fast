import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data842
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate826
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody842_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 60#64)

def globalBody842_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody842_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 576#64)) globalBody842_0 globalBody842_1

def globalBody842_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 24#64]

def globalBody842_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ok" (Flapjack.Exp.const 0#64)

def globalBody842_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0")
        (Flapjack.Exp.const 160#64)])) globalBody842_4 globalBody842_1

def globalBody842_6 : Prog (BitVec 64) :=
.seq globalBody842_3 globalBody842_5

def globalBody842_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64],
    Flapjack.Exp.const 24#64]

def globalBody842_8 : Prog (BitVec 64) :=
.seq globalBody842_6 globalBody842_7

def globalBody842_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 56#64]]

def globalBody842_10 : Prog (BitVec 64) :=
.seq globalBody842_8 globalBody842_9

def globalBody842_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0")
        (Flapjack.Exp.const 256#64)])) globalBody842_4 globalBody842_1

def globalBody842_12 : Prog (BitVec 64) :=
.seq globalBody842_10 globalBody842_11

def globalBody842_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 64#64],
    Flapjack.Exp.const 24#64]

def globalBody842_14 : Prog (BitVec 64) :=
.seq globalBody842_12 globalBody842_13

def globalBody842_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 88#64]]

def globalBody842_16 : Prog (BitVec 64) :=
.seq globalBody842_14 globalBody842_15

def globalBody842_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0")
        (Flapjack.Exp.const 320#64)])) globalBody842_4 globalBody842_1

def globalBody842_18 : Prog (BitVec 64) :=
.seq globalBody842_16 globalBody842_17

def globalBody842_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 96#64],
    Flapjack.Exp.const 24#64]

def globalBody842_20 : Prog (BitVec 64) :=
.seq globalBody842_18 globalBody842_19

def globalBody842_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 120#64]]

def globalBody842_22 : Prog (BitVec 64) :=
.seq globalBody842_20 globalBody842_21

def globalBody842_23 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0")
        (Flapjack.Exp.const 384#64)])) globalBody842_4 globalBody842_1

def globalBody842_24 : Prog (BitVec 64) :=
.seq globalBody842_22 globalBody842_23

def globalBody842_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 128#64],
    Flapjack.Exp.const 24#64]

def globalBody842_26 : Prog (BitVec 64) :=
.seq globalBody842_24 globalBody842_25

def globalBody842_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 152#64]]

def globalBody842_28 : Prog (BitVec 64) :=
.seq globalBody842_26 globalBody842_27

def globalBody842_29 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0")
        (Flapjack.Exp.const 512#64)])) globalBody842_4 globalBody842_1

def globalBody842_30 : Prog (BitVec 64) :=
.seq globalBody842_28 globalBody842_29

def globalBody842_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 160#64],
    Flapjack.Exp.const 24#64]

def globalBody842_32 : Prog (BitVec 64) :=
.seq globalBody842_30 globalBody842_31

def globalBody842_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 184#64]]

def globalBody842_34 : Prog (BitVec 64) :=
.seq globalBody842_32 globalBody842_33

def globalBody842_35 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0") (Flapjack.Exp.const 48#64)])) globalBody842_4 globalBody842_1

def globalBody842_36 : Prog (BitVec 64) :=
.seq globalBody842_34 globalBody842_35

def globalBody842_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 256#64],
    Flapjack.Exp.const 24#64]

def globalBody842_38 : Prog (BitVec 64) :=
.seq globalBody842_36 globalBody842_37

def globalBody842_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 280#64]]

def globalBody842_40 : Prog (BitVec 64) :=
.seq globalBody842_38 globalBody842_39

def globalBody842_41 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0") (Flapjack.Exp.const 32#64)])) globalBody842_4 globalBody842_1

def globalBody842_42 : Prog (BitVec 64) :=
.seq globalBody842_40 globalBody842_41

def globalBody842_43 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 320#64],
    Flapjack.Exp.const 24#64]

def globalBody842_44 : Prog (BitVec 64) :=
.seq globalBody842_42 globalBody842_43

def globalBody842_45 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 344#64]]

def globalBody842_46 : Prog (BitVec 64) :=
.seq globalBody842_44 globalBody842_45

def globalBody842_47 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0") (Flapjack.Exp.const 8#64)])) globalBody842_4 globalBody842_1

def globalBody842_48 : Prog (BitVec 64) :=
.seq globalBody842_46 globalBody842_47

def globalBody842_49 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 384#64],
    Flapjack.Exp.const 24#64]

def globalBody842_50 : Prog (BitVec 64) :=
.seq globalBody842_48 globalBody842_49

def globalBody842_51 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 408#64]]

def globalBody842_52 : Prog (BitVec 64) :=
.seq globalBody842_50 globalBody842_51

def globalBody842_53 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w0") (Flapjack.Exp.const 96#64)])) globalBody842_4 globalBody842_1

def globalBody842_54 : Prog (BitVec 64) :=
.seq globalBody842_52 globalBody842_53

def globalBody842_55 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "is_zero_bytes"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 512#64],
    Flapjack.Exp.const 24#64]

def globalBody842_56 : Prog (BitVec 64) :=
.seq globalBody842_54 globalBody842_55

def globalBody842_57 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w0"), none)) "ld_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 536#64]]

def globalBody842_58 : Prog (BitVec 64) :=
.seq globalBody842_56 globalBody842_57

def globalBody842_59 : Prog (BitVec 64) :=
.seq globalBody842_58 globalBody842_47

def globalBody842_60 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody842_61 : Prog (BitVec 64) :=
.seq globalBody842_59 globalBody842_60

def globalBody842_62 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 61#64)

def globalBody842_63 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) globalBody842_62 globalBody842_1

def globalBody842_64 : Prog (BitVec 64) :=
.seq globalBody842_61 globalBody842_63

def globalBody842_65 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 192#64],
    Flapjack.Exp.const 48#64]

def globalBody842_66 : Prog (BitVec 64) :=
.seq globalBody842_64 globalBody842_65

def globalBody842_67 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 48#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 288#64],
    Flapjack.Exp.const 32#64]

def globalBody842_68 : Prog (BitVec 64) :=
.seq globalBody842_66 globalBody842_67

def globalBody842_69 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 80#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 352#64],
    Flapjack.Exp.const 8#64]

def globalBody842_70 : Prog (BitVec 64) :=
.seq globalBody842_68 globalBody842_69

def globalBody842_71 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 88#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 416#64],
    Flapjack.Exp.const 96#64]

def globalBody842_72 : Prog (BitVec 64) :=
.seq globalBody842_70 globalBody842_71

def globalBody842_73 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 184#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 544#64],
    Flapjack.Exp.const 8#64]

def globalBody842_74 : Prog (BitVec 64) :=
.seq globalBody842_72 globalBody842_73

def globalBody842_75 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody842_76 : Prog (BitVec 64) :=
.seq globalBody842_74 globalBody842_75

def globalBody842_77 : Prog (BitVec 64) :=
.decCall ("w0") (Flapjack.Shape.one) ("ld_be64") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 24#64]]) globalBody842_76

def globalBody842_78 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody842_77

def globalBody842_79 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("is_zero_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 24#64]) globalBody842_78

def globalBody842_80 : Prog (BitVec 64) :=
.dec ("ok") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) globalBody842_79

def globalBody842_81 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody842_80

def globalBody842_82 : Prog (BitVec 64) :=
.seq globalBody842_2 globalBody842_81

def globalData842 : Decl (BitVec 64) :=
.function { name := "extract_deposit_data", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody842_82, returnShape := (Flapjack.Shape.one) }
def globalOutput842 := Pancake.PanLang.declToHOL globalData842
end InitECandidate.Proofs.FrontendStages.Declarations
