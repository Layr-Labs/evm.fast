import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data738
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate722
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody738_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody738_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody738_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "s0") (Flapjack.Exp.const 1#64)) globalBody738_0 globalBody738_1

def globalBody738_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody738_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z0") (Flapjack.Exp.const 0#64)) globalBody738_3 globalBody738_1

def globalBody738_5 : Prog (BitVec 64) :=
Flapjack.Prog.call none "bls_fp_sgn0" [Flapjack.Exp.var Flapjack.VarKind.local "a1"]

def globalBody738_6 : Prog (BitVec 64) :=
.dec ("a1") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64])) globalBody738_5

def globalBody738_7 : Prog (BitVec 64) :=
.seq globalBody738_4 globalBody738_6

def globalBody738_8 : Prog (BitVec 64) :=
.decCall ("z0") (Flapjack.Shape.one) ("bls_fp_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "a0"]) globalBody738_7

def globalBody738_9 : Prog (BitVec 64) :=
.seq globalBody738_2 globalBody738_8

def globalBody738_10 : Prog (BitVec 64) :=
.decCall ("s0") (Flapjack.Shape.one) ("bls_fp_sgn0") ([Flapjack.Exp.var Flapjack.VarKind.local "a0"]) globalBody738_9

def globalBody738_11 : Prog (BitVec 64) :=
.dec ("a0") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "a")) globalBody738_10

def globalData738 : Decl (BitVec 64) :=
.function { name := "fp2_sgn0", inline := false, exported := false, params := [("a", Flapjack.Shape.one)], body := globalBody738_11, returnShape := (Flapjack.Shape.one) }
def globalOutput738 := Pancake.PanLang.declToHOL globalData738
end InitECandidate.Proofs.FrontendStages.Declarations
