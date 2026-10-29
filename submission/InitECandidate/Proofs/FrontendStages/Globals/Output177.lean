import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data177
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate161
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody177_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "x"]

def globalBody177_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "fp_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 7#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def globalBody177_2 : Prog (BitVec 64) :=
.seq globalBody177_0 globalBody177_1

def globalBody177_3 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_eq"
  [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody177_4 : Prog (BitVec 64) :=
.seq globalBody177_2 globalBody177_3

def globalBody177_5 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) globalBody177_4

def globalBody177_6 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) globalBody177_5

def globalData177 : Decl (BitVec 64) :=
.function { name := "ec_on_curve", inline := false, exported := false, params := [("x", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("y", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody177_6, returnShape := (Flapjack.Shape.one) }
def globalOutput177 := Pancake.PanLang.declToHOL globalData177
end InitECandidate.Proofs.FrontendStages.Declarations
