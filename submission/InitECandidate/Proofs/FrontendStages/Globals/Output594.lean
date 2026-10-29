import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data594
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate578
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody594_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_truncate"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 168#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 264#64])]

def globalBody594_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_truncate"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 176#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 272#64])]

def globalBody594_2 : Prog (BitVec 64) :=
.seq globalBody594_0 globalBody594_1

def globalBody594_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody594_4 : Prog (BitVec 64) :=
.seq globalBody594_2 globalBody594_3

def globalData594 : Decl (BitVec 64) :=
.function { name := "rollback_child_access", inline := false, exported := false, params := [("child", Flapjack.Shape.one)], body := globalBody594_4, returnShape := (Flapjack.Shape.one) }
def globalOutput594 := Pancake.PanLang.declToHOL globalData594
end InitECandidate.Proofs.FrontendStages.Declarations
