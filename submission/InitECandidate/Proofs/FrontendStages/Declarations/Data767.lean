import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify751
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body767_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "rr"), none)) "bls_fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "rr", Flapjack.Exp.var Flapjack.VarKind.local "x"]

def body767_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "rr"), none)) "bls_fp_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "rr", Flapjack.Exp.var Flapjack.VarKind.local "b"]

def body767_2 : Prog (BitVec 64) :=
Flapjack.Prog.call none "bls_fp_eq"
  [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.var Flapjack.VarKind.local "rr"]

def body767_3 : Prog (BitVec 64) :=
.seq body767_1 body767_2

def body767_4 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 240#64])) body767_3

def body767_5 : Prog (BitVec 64) :=
.seq body767_0 body767_4

def body767_6 : Prog (BitVec 64) :=
.decCall ("rr") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) body767_5

def body767_7 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) body767_6

def originalData767 : Decl (BitVec 64) :=
.function { name := "g1_on_curve", inline := false, exported := false, params := [("x",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("y",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body767_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData767 : Decl (BitVec 64) :=
.function { name := "g1_on_curve", inline := false, exported := false, params := [("x",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("y",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body767_7, returnShape := (Flapjack.Shape.one) }
def original767 := Pancake.PanLang.declToHOL originalData767
def simplified767 := Pancake.PanLang.declToHOL simplifiedData767
end InitECandidate.Proofs.FrontendStages.Declarations
