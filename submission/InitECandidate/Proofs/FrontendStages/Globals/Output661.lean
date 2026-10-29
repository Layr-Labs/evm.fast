import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data661
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate643
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody661_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 11#64])

def globalBody661_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody661_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 11#64) (Flapjack.Exp.var Flapjack.VarKind.local "k")) globalBody661_0 globalBody661_1

def globalBody661_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "acc"), none)) "fq_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "p"]

def globalBody661_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody661_5 : Prog (BitVec 64) :=
.seq globalBody661_3 globalBody661_4

def globalBody661_6 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "ai", Flapjack.Exp.var Flapjack.VarKind.local "aj"]) globalBody661_5

def globalBody661_7 : Prog (BitVec 64) :=
.dec ("aj") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.var Flapjack.VarKind.local "i"],
          Flapjack.Exp.const 32#64]])) globalBody661_6

def globalBody661_8 : Prog (BitVec 64) :=
.dec ("ai") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]])) globalBody661_7

def globalBody661_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.var Flapjack.VarKind.local "i"])) globalBody661_8

def globalBody661_10 : Prog (BitVec 64) :=
.seq globalBody661_2 globalBody661_9

def globalBody661_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "acc"), none)) "fq_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def globalBody661_12 : Prog (BitVec 64) :=
.seq globalBody661_10 globalBody661_11

def globalBody661_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "acc"), none)) "fq_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "sq"]

def globalBody661_14 : Prog (BitVec 64) :=
.decCall ("sq") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "am", Flapjack.Exp.var Flapjack.VarKind.local "am"]) globalBody661_13

def globalBody661_15 : Prog (BitVec 64) :=
.dec ("am") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 1#64),
          Flapjack.Exp.const 32#64]])) globalBody661_14

def globalBody661_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 0#64)) globalBody661_15 globalBody661_1

def globalBody661_17 : Prog (BitVec 64) :=
.seq globalBody661_12 globalBody661_16

def globalBody661_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 32#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "acc")

def globalBody661_19 : Prog (BitVec 64) :=
.seq globalBody661_17 globalBody661_18

def globalBody661_20 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def globalBody661_21 : Prog (BitVec 64) :=
.seq globalBody661_19 globalBody661_20

def globalBody661_22 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody661_21

def globalBody661_23 : Prog (BitVec 64) :=
.dec ("acc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody661_22

def globalBody661_24 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 23#64)) globalBody661_23

def globalBody661_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_reduce" [Flapjack.Exp.var Flapjack.VarKind.local "t"]

def globalBody661_26 : Prog (BitVec 64) :=
.seq globalBody661_24 globalBody661_25

def globalBody661_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]

def globalBody661_28 : Prog (BitVec 64) :=
.seq globalBody661_26 globalBody661_27

def globalBody661_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody661_30 : Prog (BitVec 64) :=
.seq globalBody661_28 globalBody661_29

def globalBody661_31 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody661_32 : Prog (BitVec 64) :=
.seq globalBody661_30 globalBody661_31

def globalBody661_33 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody661_32

def globalBody661_34 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 23#64, Flapjack.Exp.const 32#64]]) globalBody661_33

def globalBody661_35 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody661_34

def globalData661 : Decl (BitVec 64) :=
.function { name := "fq12_sqr", inline := false, exported := false, params := [("d", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := globalBody661_35, returnShape := (Flapjack.Shape.one) }
def globalOutput661 := Pancake.PanLang.declToHOL globalData661
end InitECandidate.Proofs.FrontendStages.Declarations
