import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data698
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate681
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody698_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody698_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody698_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "a")])
  (Flapjack.Exp.const 0#64)) globalBody698_0 globalBody698_1

def globalBody698_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody698_4 : Prog (BitVec 64) :=
.seq globalBody698_2 globalBody698_3

def globalData698 : Decl (BitVec 64) :=
.function { name := "bls_fp_is_zero", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := globalBody698_4, returnShape := (Flapjack.Shape.one) }
def globalOutput698 := Pancake.PanLang.declToHOL globalData698
end InitECandidate.Proofs.FrontendStages.Declarations
