import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data73
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate57
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody73_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_neg" [Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody73_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody73_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
    (Flapjack.Exp.const 63#64))
  (Flapjack.Exp.const 1#64)) globalBody73_0 globalBody73_1

def globalBody73_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def globalBody73_4 : Prog (BitVec 64) :=
.seq globalBody73_2 globalBody73_3

def globalData73 : Decl (BitVec 64) :=
.function { name := "u256_abs", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody73_4, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput73 := Pancake.PanLang.declToHOL globalData73
end InitECandidate.Proofs.FrontendStages.Declarations
