import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data660
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate642
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody660_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 11#64])

def globalBody660_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody660_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 11#64) (Flapjack.Exp.var Flapjack.VarKind.local "k")) globalBody660_0 globalBody660_1

def globalBody660_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "iend" (Flapjack.Exp.const 11#64)

def globalBody660_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 11#64) (Flapjack.Exp.var Flapjack.VarKind.local "iend")) globalBody660_3 globalBody660_1

def globalBody660_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "acc"), none)) "fq_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "p"]

def globalBody660_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody660_7 : Prog (BitVec 64) :=
.seq globalBody660_5 globalBody660_6

def globalBody660_8 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "ai", Flapjack.Exp.var Flapjack.VarKind.local "bj"]) globalBody660_7

def globalBody660_9 : Prog (BitVec 64) :=
.dec ("bj") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "b",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.var Flapjack.VarKind.local "i"],
          Flapjack.Exp.const 32#64]])) globalBody660_8

def globalBody660_10 : Prog (BitVec 64) :=
.dec ("ai") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]])) globalBody660_9

def globalBody660_11 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "iend")
  (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody660_10

def globalBody660_12 : Prog (BitVec 64) :=
.seq globalBody660_4 globalBody660_11

def globalBody660_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 32#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "acc")

def globalBody660_14 : Prog (BitVec 64) :=
.seq globalBody660_12 globalBody660_13

def globalBody660_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def globalBody660_16 : Prog (BitVec 64) :=
.seq globalBody660_14 globalBody660_15

def globalBody660_17 : Prog (BitVec 64) :=
.dec ("iend") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "k") globalBody660_16

def globalBody660_18 : Prog (BitVec 64) :=
.seq globalBody660_2 globalBody660_17

def globalBody660_19 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody660_18

def globalBody660_20 : Prog (BitVec 64) :=
.dec ("acc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody660_19

def globalBody660_21 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 23#64)) globalBody660_20

def globalBody660_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_reduce" [Flapjack.Exp.var Flapjack.VarKind.local "t"]

def globalBody660_23 : Prog (BitVec 64) :=
.seq globalBody660_21 globalBody660_22

def globalBody660_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]

def globalBody660_25 : Prog (BitVec 64) :=
.seq globalBody660_23 globalBody660_24

def globalBody660_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody660_27 : Prog (BitVec 64) :=
.seq globalBody660_25 globalBody660_26

def globalBody660_28 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody660_29 : Prog (BitVec 64) :=
.seq globalBody660_27 globalBody660_28

def globalBody660_30 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody660_29

def globalBody660_31 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 23#64, Flapjack.Exp.const 32#64]]) globalBody660_30

def globalBody660_32 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody660_31

def globalData660 : Decl (BitVec 64) :=
.function { name := "fq12_mul", inline := false, exported := false, params := [("d", Flapjack.Shape.one), ("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := globalBody660_32, returnShape := (Flapjack.Shape.one) }
def globalOutput660 := Pancake.PanLang.declToHOL globalData660
end InitECandidate.Proofs.FrontendStages.Declarations
