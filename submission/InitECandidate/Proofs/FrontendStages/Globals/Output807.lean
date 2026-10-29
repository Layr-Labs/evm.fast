import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data807
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate791
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody807_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_set_one" [Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def globalBody807_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody807_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody807_3 : Prog (BitVec 64) :=
.seq globalBody807_1 globalBody807_2

def globalBody807_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody807_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) globalBody807_3 globalBody807_4

def globalBody807_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sg") (Flapjack.Exp.const 0#64)) globalBody807_3 globalBody807_4

def globalBody807_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ok"), none)) "g2_decode"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.const 128#64],
    Flapjack.Exp.var Flapjack.VarKind.local "q"]

def globalBody807_8 : Prog (BitVec 64) :=
.seq globalBody807_6 globalBody807_7

def globalBody807_9 : Prog (BitVec 64) :=
.seq globalBody807_8 globalBody807_5

def globalBody807_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "sg"), none)) "g2_subgroup_check"
  [Flapjack.Exp.var Flapjack.VarKind.local "q"]

def globalBody807_11 : Prog (BitVec 64) :=
.seq globalBody807_9 globalBody807_10

def globalBody807_12 : Prog (BitVec 64) :=
.seq globalBody807_11 globalBody807_6

def globalBody807_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pair_accumulate"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.var Flapjack.VarKind.local "q"]

def globalBody807_14 : Prog (BitVec 64) :=
.seq globalBody807_12 globalBody807_13

def globalBody807_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody807_16 : Prog (BitVec 64) :=
.seq globalBody807_14 globalBody807_15

def globalBody807_17 : Prog (BitVec 64) :=
.decCall ("sg") (Flapjack.Shape.one) ("g1_subgroup_check") ([Flapjack.Exp.var Flapjack.VarKind.local "p"]) globalBody807_16

def globalBody807_18 : Prog (BitVec 64) :=
.seq globalBody807_5 globalBody807_17

def globalBody807_19 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("g1_decode") ([Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "p"]) globalBody807_18

def globalBody807_20 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "data",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 384#64]]) globalBody807_19

def globalBody807_21 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "k")) globalBody807_20

def globalBody807_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_final_exp"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def globalBody807_23 : Prog (BitVec 64) :=
.seq globalBody807_21 globalBody807_22

def globalBody807_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]

def globalBody807_25 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 31#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "one")

def globalBody807_26 : Prog (BitVec 64) :=
.seq globalBody807_24 globalBody807_25

def globalBody807_27 : Prog (BitVec 64) :=
.seq globalBody807_26 globalBody807_1

def globalBody807_28 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody807_29 : Prog (BitVec 64) :=
.seq globalBody807_27 globalBody807_28

def globalBody807_30 : Prog (BitVec 64) :=
.decCall ("one") (Flapjack.Shape.one) ("fp12_is_one") ([Flapjack.Exp.var Flapjack.VarKind.local "acc"]) globalBody807_29

def globalBody807_31 : Prog (BitVec 64) :=
.seq globalBody807_23 globalBody807_30

def globalBody807_32 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody807_31

def globalBody807_33 : Prog (BitVec 64) :=
.seq globalBody807_0 globalBody807_32

def globalBody807_34 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) globalBody807_33

def globalBody807_35 : Prog (BitVec 64) :=
.decCall ("q") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) globalBody807_34

def globalBody807_36 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) globalBody807_35

def globalBody807_37 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody807_36

def globalData807 : Decl (BitVec 64) :=
.function { name := "bls_pairing_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("k", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody807_37, returnShape := (Flapjack.Shape.one) }
def globalOutput807 := Pancake.PanLang.declToHOL globalData807
end InitECandidate.Proofs.FrontendStages.Declarations
