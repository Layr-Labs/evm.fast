import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify722
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body738_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body738_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body738_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "s0") (Flapjack.Exp.const 1#64)) body738_0 body738_1

def body738_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body738_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z0") (Flapjack.Exp.const 0#64)) body738_3 body738_1

def body738_5 : Prog (BitVec 64) :=
Flapjack.Prog.call none "bls_fp_sgn0" [Flapjack.Exp.var Flapjack.VarKind.local "a1"]

def body738_6 : Prog (BitVec 64) :=
.dec ("a1") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64])) body738_5

def body738_7 : Prog (BitVec 64) :=
.seq body738_4 body738_6

def body738_8 : Prog (BitVec 64) :=
.decCall ("z0") (Flapjack.Shape.one) ("bls_fp_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "a0"]) body738_7

def body738_9 : Prog (BitVec 64) :=
.seq body738_2 body738_8

def body738_10 : Prog (BitVec 64) :=
.decCall ("s0") (Flapjack.Shape.one) ("bls_fp_sgn0") ([Flapjack.Exp.var Flapjack.VarKind.local "a0"]) body738_9

def body738_11 : Prog (BitVec 64) :=
.dec ("a0") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "a")) body738_10

def originalData738 : Decl (BitVec 64) :=
.function { name := "fp2_sgn0", inline := false, exported := false, params := [("a", Flapjack.Shape.one)], body := body738_11, returnShape := (Flapjack.Shape.one) }
def simplifiedData738 : Decl (BitVec 64) :=
.function { name := "fp2_sgn0", inline := false, exported := false, params := [("a", Flapjack.Shape.one)], body := body738_11, returnShape := (Flapjack.Shape.one) }
def original738 := Pancake.PanLang.declToHOL originalData738
def simplified738 := Pancake.PanLang.declToHOL simplifiedData738
end InitECandidate.Proofs.FrontendStages.Declarations
