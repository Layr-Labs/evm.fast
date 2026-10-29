import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data83
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate67
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody83_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody83_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody83_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 256#64)) globalBody83_0 globalBody83_1

def globalBody83_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l0" (Flapjack.Exp.var Flapjack.VarKind.local "l1")

def globalBody83_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l1" (Flapjack.Exp.var Flapjack.VarKind.local "l2")

def globalBody83_5 : Prog (BitVec 64) :=
.seq globalBody83_3 globalBody83_4

def globalBody83_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l2" (Flapjack.Exp.var Flapjack.VarKind.local "l3")

def globalBody83_7 : Prog (BitVec 64) :=
.seq globalBody83_5 globalBody83_6

def globalBody83_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l3" (Flapjack.Exp.const 0#64)

def globalBody83_9 : Prog (BitVec 64) :=
.seq globalBody83_7 globalBody83_8

def globalBody83_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 1#64)) globalBody83_9 globalBody83_1

def globalBody83_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l0" (Flapjack.Exp.var Flapjack.VarKind.local "l2")

def globalBody83_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l1" (Flapjack.Exp.var Flapjack.VarKind.local "l3")

def globalBody83_13 : Prog (BitVec 64) :=
.seq globalBody83_11 globalBody83_12

def globalBody83_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l2" (Flapjack.Exp.const 0#64)

def globalBody83_15 : Prog (BitVec 64) :=
.seq globalBody83_13 globalBody83_14

def globalBody83_16 : Prog (BitVec 64) :=
.seq globalBody83_15 globalBody83_8

def globalBody83_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 2#64)) globalBody83_16 globalBody83_1

def globalBody83_18 : Prog (BitVec 64) :=
.seq globalBody83_10 globalBody83_17

def globalBody83_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l0" (Flapjack.Exp.var Flapjack.VarKind.local "l3")

def globalBody83_20 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l1" (Flapjack.Exp.const 0#64)

def globalBody83_21 : Prog (BitVec 64) :=
.seq globalBody83_19 globalBody83_20

def globalBody83_22 : Prog (BitVec 64) :=
.seq globalBody83_21 globalBody83_14

def globalBody83_23 : Prog (BitVec 64) :=
.seq globalBody83_22 globalBody83_8

def globalBody83_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 3#64)) globalBody83_23 globalBody83_1

def globalBody83_25 : Prog (BitVec 64) :=
.seq globalBody83_18 globalBody83_24

def globalBody83_26 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l0"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l0")
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "l1")
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 64#64, Flapjack.Exp.var Flapjack.VarKind.local "s"])])

def globalBody83_27 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l1"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l1")
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "l2")
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 64#64, Flapjack.Exp.var Flapjack.VarKind.local "s"])])

def globalBody83_28 : Prog (BitVec 64) :=
.seq globalBody83_26 globalBody83_27

def globalBody83_29 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l2"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l2")
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "l3")
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 64#64, Flapjack.Exp.var Flapjack.VarKind.local "s"])])

def globalBody83_30 : Prog (BitVec 64) :=
.seq globalBody83_28 globalBody83_29

def globalBody83_31 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l3"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l3")
    (Flapjack.Exp.var Flapjack.VarKind.local "s"))

def globalBody83_32 : Prog (BitVec 64) :=
.seq globalBody83_30 globalBody83_31

def globalBody83_33 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "s") (Flapjack.Exp.const 0#64)) globalBody83_32 globalBody83_1

def globalBody83_34 : Prog (BitVec 64) :=
.seq globalBody83_25 globalBody83_33

def globalBody83_35 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "l0", Flapjack.Exp.var Flapjack.VarKind.local "l1",
      Flapjack.Exp.var Flapjack.VarKind.local "l2", Flapjack.Exp.var Flapjack.VarKind.local "l3"])

def globalBody83_36 : Prog (BitVec 64) :=
.seq globalBody83_34 globalBody83_35

def globalBody83_37 : Prog (BitVec 64) :=
.dec ("l3") (Flapjack.Shape.one) (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")) globalBody83_36

def globalBody83_38 : Prog (BitVec 64) :=
.dec ("l2") (Flapjack.Shape.one) (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a")) globalBody83_37

def globalBody83_39 : Prog (BitVec 64) :=
.dec ("l1") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a")) globalBody83_38

def globalBody83_40 : Prog (BitVec 64) :=
.dec ("l0") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a")) globalBody83_39

def globalBody83_41 : Prog (BitVec 64) :=
.dec ("s") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 63#64]) globalBody83_40

def globalBody83_42 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 6#64)) globalBody83_41

def globalBody83_43 : Prog (BitVec 64) :=
.seq globalBody83_2 globalBody83_42

def globalData83 : Decl (BitVec 64) :=
.function { name := "u256_shr", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("n", Flapjack.Shape.one)], body := globalBody83_43, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput83 := Pancake.PanLang.declToHOL globalData83
end InitECandidate.Proofs.FrontendStages.Declarations
