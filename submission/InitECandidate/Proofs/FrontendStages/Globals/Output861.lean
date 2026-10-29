import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data861
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate829
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody861_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "hi4"]

def globalBody861_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 4#64],
    Flapjack.Exp.var Flapjack.VarKind.local "mid8"]

def globalBody861_2 : Prog (BitVec 64) :=
.seq globalBody861_0 globalBody861_1

def globalBody861_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 12#64],
    Flapjack.Exp.var Flapjack.VarKind.local "lo8"]

def globalBody861_4 : Prog (BitVec 64) :=
.seq globalBody861_2 globalBody861_3

def globalBody861_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody861_6 : Prog (BitVec 64) :=
.seq globalBody861_4 globalBody861_5

def globalData861 : Decl (BitVec 64) :=
.function { name := "addr_from_words", inline := false, exported := false, params := [("out", Flapjack.Shape.one), ("hi4", Flapjack.Shape.one), ("mid8", Flapjack.Shape.one), ("lo8", Flapjack.Shape.one)], body := globalBody861_6, returnShape := (Flapjack.Shape.one) }
def globalOutput861 := Pancake.PanLang.declToHOL globalData861
end InitECandidate.Proofs.FrontendStages.Declarations
