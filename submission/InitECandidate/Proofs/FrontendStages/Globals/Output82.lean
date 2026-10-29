import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data82
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate66
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody82_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody82_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody82_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 256#64)) globalBody82_0 globalBody82_1

def globalBody82_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l3" (Flapjack.Exp.var Flapjack.VarKind.local "l2")

def globalBody82_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l2" (Flapjack.Exp.var Flapjack.VarKind.local "l1")

def globalBody82_5 : Prog (BitVec 64) :=
.seq globalBody82_3 globalBody82_4

def globalBody82_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l1" (Flapjack.Exp.var Flapjack.VarKind.local "l0")

def globalBody82_7 : Prog (BitVec 64) :=
.seq globalBody82_5 globalBody82_6

def globalBody82_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l0" (Flapjack.Exp.const 0#64)

def globalBody82_9 : Prog (BitVec 64) :=
.seq globalBody82_7 globalBody82_8

def globalBody82_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 1#64)) globalBody82_9 globalBody82_1

def globalBody82_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l3" (Flapjack.Exp.var Flapjack.VarKind.local "l1")

def globalBody82_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l2" (Flapjack.Exp.var Flapjack.VarKind.local "l0")

def globalBody82_13 : Prog (BitVec 64) :=
.seq globalBody82_11 globalBody82_12

def globalBody82_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l1" (Flapjack.Exp.const 0#64)

def globalBody82_15 : Prog (BitVec 64) :=
.seq globalBody82_13 globalBody82_14

def globalBody82_16 : Prog (BitVec 64) :=
.seq globalBody82_15 globalBody82_8

def globalBody82_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 2#64)) globalBody82_16 globalBody82_1

def globalBody82_18 : Prog (BitVec 64) :=
.seq globalBody82_10 globalBody82_17

def globalBody82_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l3" (Flapjack.Exp.var Flapjack.VarKind.local "l0")

def globalBody82_20 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l2" (Flapjack.Exp.const 0#64)

def globalBody82_21 : Prog (BitVec 64) :=
.seq globalBody82_19 globalBody82_20

def globalBody82_22 : Prog (BitVec 64) :=
.seq globalBody82_21 globalBody82_14

def globalBody82_23 : Prog (BitVec 64) :=
.seq globalBody82_22 globalBody82_8

def globalBody82_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 3#64)) globalBody82_23 globalBody82_1

def globalBody82_25 : Prog (BitVec 64) :=
.seq globalBody82_18 globalBody82_24

def globalBody82_26 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l3"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "l3")
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l2")
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 64#64, Flapjack.Exp.var Flapjack.VarKind.local "s"])])

def globalBody82_27 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l2"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "l2")
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l1")
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 64#64, Flapjack.Exp.var Flapjack.VarKind.local "s"])])

def globalBody82_28 : Prog (BitVec 64) :=
.seq globalBody82_26 globalBody82_27

def globalBody82_29 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l1"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "l1")
        (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l0")
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 64#64, Flapjack.Exp.var Flapjack.VarKind.local "s"])])

def globalBody82_30 : Prog (BitVec 64) :=
.seq globalBody82_28 globalBody82_29

def globalBody82_31 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l0"
  (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "l0")
    (Flapjack.Exp.var Flapjack.VarKind.local "s"))

def globalBody82_32 : Prog (BitVec 64) :=
.seq globalBody82_30 globalBody82_31

def globalBody82_33 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "s") (Flapjack.Exp.const 0#64)) globalBody82_32 globalBody82_1

def globalBody82_34 : Prog (BitVec 64) :=
.seq globalBody82_25 globalBody82_33

def globalBody82_35 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "l0", Flapjack.Exp.var Flapjack.VarKind.local "l1",
      Flapjack.Exp.var Flapjack.VarKind.local "l2", Flapjack.Exp.var Flapjack.VarKind.local "l3"])

def globalBody82_36 : Prog (BitVec 64) :=
.seq globalBody82_34 globalBody82_35

def globalBody82_37 : Prog (BitVec 64) :=
.dec ("l3") (Flapjack.Shape.one) (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")) globalBody82_36

def globalBody82_38 : Prog (BitVec 64) :=
.dec ("l2") (Flapjack.Shape.one) (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a")) globalBody82_37

def globalBody82_39 : Prog (BitVec 64) :=
.dec ("l1") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a")) globalBody82_38

def globalBody82_40 : Prog (BitVec 64) :=
.dec ("l0") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a")) globalBody82_39

def globalBody82_41 : Prog (BitVec 64) :=
.dec ("s") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 63#64]) globalBody82_40

def globalBody82_42 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 6#64)) globalBody82_41

def globalBody82_43 : Prog (BitVec 64) :=
.seq globalBody82_2 globalBody82_42

def globalData82 : Decl (BitVec 64) :=
.function { name := "u256_shl", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("n", Flapjack.Shape.one)], body := globalBody82_43, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput82 := Pancake.PanLang.declToHOL globalData82
end InitECandidate.Proofs.FrontendStages.Declarations
