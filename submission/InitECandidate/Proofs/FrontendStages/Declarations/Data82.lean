import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify66
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body82_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body82_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body82_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 256#64)) body82_0 body82_1

def body82_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l3" (Flapjack.Exp.var Flapjack.VarKind.local "l2")

def body82_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l2" (Flapjack.Exp.var Flapjack.VarKind.local "l1")

def body82_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l1" (Flapjack.Exp.var Flapjack.VarKind.local "l0")

def body82_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l0" (Flapjack.Exp.const 0#64)

def body82_7 : Prog (BitVec 64) :=
.seq body82_5 body82_6

def body82_8 : Prog (BitVec 64) :=
.seq body82_4 body82_7

def body82_9 : Prog (BitVec 64) :=
.seq body82_3 body82_8

def body82_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 1#64)) body82_9 body82_1

def body82_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l3" (Flapjack.Exp.var Flapjack.VarKind.local "l1")

def body82_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l2" (Flapjack.Exp.var Flapjack.VarKind.local "l0")

def body82_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l1" (Flapjack.Exp.const 0#64)

def body82_14 : Prog (BitVec 64) :=
.seq body82_13 body82_6

def body82_15 : Prog (BitVec 64) :=
.seq body82_12 body82_14

def body82_16 : Prog (BitVec 64) :=
.seq body82_11 body82_15

def body82_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 2#64)) body82_16 body82_1

def body82_18 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l3" (Flapjack.Exp.var Flapjack.VarKind.local "l0")

def body82_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l2" (Flapjack.Exp.const 0#64)

def body82_20 : Prog (BitVec 64) :=
.seq body82_19 body82_14

def body82_21 : Prog (BitVec 64) :=
.seq body82_18 body82_20

def body82_22 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 3#64)) body82_21 body82_1

def body82_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l3"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "l3")
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l2")
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 64#64, Flapjack.Exp.var Flapjack.VarKind.local "s"])])

def body82_24 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l2"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "l2")
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l1")
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 64#64, Flapjack.Exp.var Flapjack.VarKind.local "s"])])

def body82_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l1"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "l1")
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l0")
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 64#64, Flapjack.Exp.var Flapjack.VarKind.local "s"])])

def body82_26 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l0"
  (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "l0")
    (Flapjack.Exp.var Flapjack.VarKind.local "s"))

def body82_27 : Prog (BitVec 64) :=
.seq body82_25 body82_26

def body82_28 : Prog (BitVec 64) :=
.seq body82_24 body82_27

def body82_29 : Prog (BitVec 64) :=
.seq body82_23 body82_28

def body82_30 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "s") (Flapjack.Exp.const 0#64)) body82_29 body82_1

def body82_31 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "l0", Flapjack.Exp.var Flapjack.VarKind.local "l1",
      Flapjack.Exp.var Flapjack.VarKind.local "l2", Flapjack.Exp.var Flapjack.VarKind.local "l3"])

def body82_32 : Prog (BitVec 64) :=
.seq body82_30 body82_31

def body82_33 : Prog (BitVec 64) :=
.seq body82_22 body82_32

def body82_34 : Prog (BitVec 64) :=
.seq body82_17 body82_33

def body82_35 : Prog (BitVec 64) :=
.seq body82_10 body82_34

def body82_36 : Prog (BitVec 64) :=
.dec ("l3") (Flapjack.Shape.one) (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")) body82_35

def body82_37 : Prog (BitVec 64) :=
.dec ("l2") (Flapjack.Shape.one) (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a")) body82_36

def body82_38 : Prog (BitVec 64) :=
.dec ("l1") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a")) body82_37

def body82_39 : Prog (BitVec 64) :=
.dec ("l0") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a")) body82_38

def body82_40 : Prog (BitVec 64) :=
.dec ("s") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 63#64]) body82_39

def body82_41 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 6#64)) body82_40

def body82_42 : Prog (BitVec 64) :=
.seq body82_2 body82_41

def body82_43 : Prog (BitVec 64) :=
.seq body82_3 body82_4

def body82_44 : Prog (BitVec 64) :=
.seq body82_43 body82_5

def body82_45 : Prog (BitVec 64) :=
.seq body82_44 body82_6

def body82_46 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 1#64)) body82_45 body82_1

def body82_47 : Prog (BitVec 64) :=
.seq body82_11 body82_12

def body82_48 : Prog (BitVec 64) :=
.seq body82_47 body82_13

def body82_49 : Prog (BitVec 64) :=
.seq body82_48 body82_6

def body82_50 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 2#64)) body82_49 body82_1

def body82_51 : Prog (BitVec 64) :=
.seq body82_46 body82_50

def body82_52 : Prog (BitVec 64) :=
.seq body82_18 body82_19

def body82_53 : Prog (BitVec 64) :=
.seq body82_52 body82_13

def body82_54 : Prog (BitVec 64) :=
.seq body82_53 body82_6

def body82_55 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 3#64)) body82_54 body82_1

def body82_56 : Prog (BitVec 64) :=
.seq body82_51 body82_55

def body82_57 : Prog (BitVec 64) :=
.seq body82_23 body82_24

def body82_58 : Prog (BitVec 64) :=
.seq body82_57 body82_25

def body82_59 : Prog (BitVec 64) :=
.seq body82_58 body82_26

def body82_60 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "s") (Flapjack.Exp.const 0#64)) body82_59 body82_1

def body82_61 : Prog (BitVec 64) :=
.seq body82_56 body82_60

def body82_62 : Prog (BitVec 64) :=
.seq body82_61 body82_31

def body82_63 : Prog (BitVec 64) :=
.dec ("l3") (Flapjack.Shape.one) (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")) body82_62

def body82_64 : Prog (BitVec 64) :=
.dec ("l2") (Flapjack.Shape.one) (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a")) body82_63

def body82_65 : Prog (BitVec 64) :=
.dec ("l1") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a")) body82_64

def body82_66 : Prog (BitVec 64) :=
.dec ("l0") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a")) body82_65

def body82_67 : Prog (BitVec 64) :=
.dec ("s") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 63#64]) body82_66

def body82_68 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 6#64)) body82_67

def body82_69 : Prog (BitVec 64) :=
.seq body82_2 body82_68

def originalData82 : Decl (BitVec 64) :=
.function { name := "u256_shl", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("n", Flapjack.Shape.one)], body := body82_42, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData82 : Decl (BitVec 64) :=
.function { name := "u256_shl", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("n", Flapjack.Shape.one)], body := body82_69, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original82 := Pancake.PanLang.declToHOL originalData82
def simplified82 := Pancake.PanLang.declToHOL simplifiedData82
end InitECandidate.Proofs.FrontendStages.Declarations
