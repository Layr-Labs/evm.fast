import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data87
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate71
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody87_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 8#64]))

def globalBody87_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 16#64]))

def globalBody87_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 24#64]))

def globalBody87_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "l0", Flapjack.Exp.var Flapjack.VarKind.local "l1",
      Flapjack.Exp.var Flapjack.VarKind.local "l2", Flapjack.Exp.var Flapjack.VarKind.local "l3"])

def globalBody87_4 : Prog (BitVec 64) :=
.decCall ("l0") (Flapjack.Shape.one) ("bswap64") ([Flapjack.Exp.var Flapjack.VarKind.local "w"]) globalBody87_3

def globalBody87_5 : Prog (BitVec 64) :=
.seq globalBody87_2 globalBody87_4

def globalBody87_6 : Prog (BitVec 64) :=
.decCall ("l1") (Flapjack.Shape.one) ("bswap64") ([Flapjack.Exp.var Flapjack.VarKind.local "w"]) globalBody87_5

def globalBody87_7 : Prog (BitVec 64) :=
.seq globalBody87_1 globalBody87_6

def globalBody87_8 : Prog (BitVec 64) :=
.decCall ("l2") (Flapjack.Shape.one) ("bswap64") ([Flapjack.Exp.var Flapjack.VarKind.local "w"]) globalBody87_7

def globalBody87_9 : Prog (BitVec 64) :=
.seq globalBody87_0 globalBody87_8

def globalBody87_10 : Prog (BitVec 64) :=
.decCall ("l3") (Flapjack.Shape.one) ("bswap64") ([Flapjack.Exp.var Flapjack.VarKind.local "w"]) globalBody87_9

def globalBody87_11 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "p")) globalBody87_10

def globalBody87_12 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody87_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 32#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal
        (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 7#64])
        (Flapjack.Exp.const 0#64))]) globalBody87_11 globalBody87_12

def globalBody87_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l0"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "l0", Flapjack.Exp.var Flapjack.VarKind.local "byte"])

def globalBody87_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 0#64)) globalBody87_14 globalBody87_12

def globalBody87_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l1"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "l1", Flapjack.Exp.var Flapjack.VarKind.local "byte"])

def globalBody87_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 1#64)) globalBody87_16 globalBody87_12

def globalBody87_18 : Prog (BitVec 64) :=
.seq globalBody87_15 globalBody87_17

def globalBody87_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l2"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "l2", Flapjack.Exp.var Flapjack.VarKind.local "byte"])

def globalBody87_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 2#64)) globalBody87_19 globalBody87_12

def globalBody87_21 : Prog (BitVec 64) :=
.seq globalBody87_18 globalBody87_20

def globalBody87_22 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l3"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "l3", Flapjack.Exp.var Flapjack.VarKind.local "byte"])

def globalBody87_23 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 3#64)) globalBody87_22 globalBody87_12

def globalBody87_24 : Prog (BitVec 64) :=
.seq globalBody87_21 globalBody87_23

def globalBody87_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody87_26 : Prog (BitVec 64) :=
.seq globalBody87_24 globalBody87_25

def globalBody87_27 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "pos") (Flapjack.Exp.const 3#64)) globalBody87_26

def globalBody87_28 : Prog (BitVec 64) :=
.dec ("byte") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsl
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"]))
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "pos", Flapjack.Exp.const 7#64],
      Flapjack.Exp.const 8#64])) globalBody87_27

def globalBody87_29 : Prog (BitVec 64) :=
.dec ("pos") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody87_28

def globalBody87_30 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody87_29

def globalBody87_31 : Prog (BitVec 64) :=
.seq globalBody87_30 globalBody87_3

def globalBody87_32 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody87_31

def globalBody87_33 : Prog (BitVec 64) :=
.dec ("l3") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody87_32

def globalBody87_34 : Prog (BitVec 64) :=
.dec ("l2") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody87_33

def globalBody87_35 : Prog (BitVec 64) :=
.dec ("l1") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody87_34

def globalBody87_36 : Prog (BitVec 64) :=
.dec ("l0") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody87_35

def globalBody87_37 : Prog (BitVec 64) :=
.seq globalBody87_13 globalBody87_36

def globalData87 : Decl (BitVec 64) :=
.function { name := "u256_from_be", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody87_37, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput87 := Pancake.PanLang.declToHOL globalData87
end InitECandidate.Proofs.FrontendStages.Declarations
