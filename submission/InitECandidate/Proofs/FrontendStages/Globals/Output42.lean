import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data42
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate25
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody42_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody42_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody42_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")])
  (Flapjack.Exp.const 0#64)) globalBody42_0 globalBody42_1

def globalBody42_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody42_4 : Prog (BitVec 64) :=
.seq globalBody42_2 globalBody42_3

def globalData42 : Decl (BitVec 64) :=
.function { name := "u256_fits_word", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody42_4, returnShape := (Flapjack.Shape.one) }
def globalOutput42 := Pancake.PanLang.declToHOL globalData42
end InitECandidate.Proofs.FrontendStages.Declarations
