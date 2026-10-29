import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data736
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate720
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody736_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "c1"), none)) "bls_fp_neg"
  [Flapjack.Exp.var Flapjack.VarKind.local "c1"]

def globalBody736_1 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "r") (Flapjack.Exp.var Flapjack.VarKind.local "c0")

def globalBody736_2 : Prog (BitVec 64) :=
.seq globalBody736_0 globalBody736_1

def globalBody736_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "c1")

def globalBody736_4 : Prog (BitVec 64) :=
.seq globalBody736_2 globalBody736_3

def globalBody736_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody736_6 : Prog (BitVec 64) :=
.seq globalBody736_4 globalBody736_5

def globalBody736_7 : Prog (BitVec 64) :=
.decCall ("c1") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "di"]) globalBody736_6

def globalBody736_8 : Prog (BitVec 64) :=
.decCall ("c0") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "di"]) globalBody736_7

def globalBody736_9 : Prog (BitVec 64) :=
.decCall ("di") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_inv") ([Flapjack.Exp.var Flapjack.VarKind.local "d"]) globalBody736_8

def globalBody736_10 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_add") ([Flapjack.Exp.var Flapjack.VarKind.local "d0", Flapjack.Exp.var Flapjack.VarKind.local "d1"]) globalBody736_9

def globalBody736_11 : Prog (BitVec 64) :=
.decCall ("d1") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "a1"]) globalBody736_10

def globalBody736_12 : Prog (BitVec 64) :=
.decCall ("d0") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "a0"]) globalBody736_11

def globalBody736_13 : Prog (BitVec 64) :=
.dec ("a1") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64])) globalBody736_12

def globalBody736_14 : Prog (BitVec 64) :=
.dec ("a0") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "a")) globalBody736_13

def globalData736 : Decl (BitVec 64) :=
.function { name := "fp2_inv", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := globalBody736_14, returnShape := (Flapjack.Shape.one) }
def globalOutput736 := Pancake.PanLang.declToHOL globalData736
end InitECandidate.Proofs.FrontendStages.Declarations
