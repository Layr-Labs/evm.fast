import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify67
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body83_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body83_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body83_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 256#64)) body83_0 body83_1

def body83_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l0" (Flapjack.Exp.var Flapjack.VarKind.local "l1")

def body83_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l1" (Flapjack.Exp.var Flapjack.VarKind.local "l2")

def body83_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l2" (Flapjack.Exp.var Flapjack.VarKind.local "l3")

def body83_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l3" (Flapjack.Exp.const 0#64)

def body83_7 : Prog (BitVec 64) :=
.seq body83_5 body83_6

def body83_8 : Prog (BitVec 64) :=
.seq body83_4 body83_7

def body83_9 : Prog (BitVec 64) :=
.seq body83_3 body83_8

def body83_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 1#64)) body83_9 body83_1

def body83_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l0" (Flapjack.Exp.var Flapjack.VarKind.local "l2")

def body83_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l1" (Flapjack.Exp.var Flapjack.VarKind.local "l3")

def body83_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l2" (Flapjack.Exp.const 0#64)

def body83_14 : Prog (BitVec 64) :=
.seq body83_13 body83_6

def body83_15 : Prog (BitVec 64) :=
.seq body83_12 body83_14

def body83_16 : Prog (BitVec 64) :=
.seq body83_11 body83_15

def body83_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 2#64)) body83_16 body83_1

def body83_18 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l0" (Flapjack.Exp.var Flapjack.VarKind.local "l3")

def body83_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l1" (Flapjack.Exp.const 0#64)

def body83_20 : Prog (BitVec 64) :=
.seq body83_19 body83_14

def body83_21 : Prog (BitVec 64) :=
.seq body83_18 body83_20

def body83_22 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 3#64)) body83_21 body83_1

def body83_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l0"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l0")
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "l1")
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 64#64, Flapjack.Exp.var Flapjack.VarKind.local "s"])])

def body83_24 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l1"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l1")
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "l2")
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 64#64, Flapjack.Exp.var Flapjack.VarKind.local "s"])])

def body83_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l2"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l2")
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "l3")
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 64#64, Flapjack.Exp.var Flapjack.VarKind.local "s"])])

def body83_26 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l3"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l3")
    (Flapjack.Exp.var Flapjack.VarKind.local "s"))

def body83_27 : Prog (BitVec 64) :=
.seq body83_25 body83_26

def body83_28 : Prog (BitVec 64) :=
.seq body83_24 body83_27

def body83_29 : Prog (BitVec 64) :=
.seq body83_23 body83_28

def body83_30 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "s") (Flapjack.Exp.const 0#64)) body83_29 body83_1

def body83_31 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "l0", Flapjack.Exp.var Flapjack.VarKind.local "l1",
      Flapjack.Exp.var Flapjack.VarKind.local "l2", Flapjack.Exp.var Flapjack.VarKind.local "l3"])

def body83_32 : Prog (BitVec 64) :=
.seq body83_30 body83_31

def body83_33 : Prog (BitVec 64) :=
.seq body83_22 body83_32

def body83_34 : Prog (BitVec 64) :=
.seq body83_17 body83_33

def body83_35 : Prog (BitVec 64) :=
.seq body83_10 body83_34

def body83_36 : Prog (BitVec 64) :=
.dec ("l3") (Flapjack.Shape.one) (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")) body83_35

def body83_37 : Prog (BitVec 64) :=
.dec ("l2") (Flapjack.Shape.one) (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a")) body83_36

def body83_38 : Prog (BitVec 64) :=
.dec ("l1") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a")) body83_37

def body83_39 : Prog (BitVec 64) :=
.dec ("l0") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a")) body83_38

def body83_40 : Prog (BitVec 64) :=
.dec ("s") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 63#64]) body83_39

def body83_41 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 6#64)) body83_40

def body83_42 : Prog (BitVec 64) :=
.seq body83_2 body83_41

def body83_43 : Prog (BitVec 64) :=
.seq body83_3 body83_4

def body83_44 : Prog (BitVec 64) :=
.seq body83_43 body83_5

def body83_45 : Prog (BitVec 64) :=
.seq body83_44 body83_6

def body83_46 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 1#64)) body83_45 body83_1

def body83_47 : Prog (BitVec 64) :=
.seq body83_11 body83_12

def body83_48 : Prog (BitVec 64) :=
.seq body83_47 body83_13

def body83_49 : Prog (BitVec 64) :=
.seq body83_48 body83_6

def body83_50 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 2#64)) body83_49 body83_1

def body83_51 : Prog (BitVec 64) :=
.seq body83_46 body83_50

def body83_52 : Prog (BitVec 64) :=
.seq body83_18 body83_19

def body83_53 : Prog (BitVec 64) :=
.seq body83_52 body83_13

def body83_54 : Prog (BitVec 64) :=
.seq body83_53 body83_6

def body83_55 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 3#64)) body83_54 body83_1

def body83_56 : Prog (BitVec 64) :=
.seq body83_51 body83_55

def body83_57 : Prog (BitVec 64) :=
.seq body83_23 body83_24

def body83_58 : Prog (BitVec 64) :=
.seq body83_57 body83_25

def body83_59 : Prog (BitVec 64) :=
.seq body83_58 body83_26

def body83_60 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "s") (Flapjack.Exp.const 0#64)) body83_59 body83_1

def body83_61 : Prog (BitVec 64) :=
.seq body83_56 body83_60

def body83_62 : Prog (BitVec 64) :=
.seq body83_61 body83_31

def body83_63 : Prog (BitVec 64) :=
.dec ("l3") (Flapjack.Shape.one) (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")) body83_62

def body83_64 : Prog (BitVec 64) :=
.dec ("l2") (Flapjack.Shape.one) (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a")) body83_63

def body83_65 : Prog (BitVec 64) :=
.dec ("l1") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a")) body83_64

def body83_66 : Prog (BitVec 64) :=
.dec ("l0") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a")) body83_65

def body83_67 : Prog (BitVec 64) :=
.dec ("s") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 63#64]) body83_66

def body83_68 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 6#64)) body83_67

def body83_69 : Prog (BitVec 64) :=
.seq body83_2 body83_68

def originalData83 : Decl (BitVec 64) :=
.function { name := "u256_shr", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("n", Flapjack.Shape.one)], body := body83_42, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData83 : Decl (BitVec 64) :=
.function { name := "u256_shr", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("n", Flapjack.Shape.one)], body := body83_69, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original83 := Pancake.PanLang.declToHOL originalData83
def simplified83 := Pancake.PanLang.declToHOL simplifiedData83
end InitECandidate.Proofs.FrontendStages.Declarations
