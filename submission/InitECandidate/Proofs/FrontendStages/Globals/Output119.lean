import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data119
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate102
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody119_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "v"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 8#64))

def globalBody119_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])

def globalBody119_2 : Prog (BitVec 64) :=
.seq globalBody119_0 globalBody119_1

def globalBody119_3 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 0#64)) globalBody119_2

def globalBody119_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "n")

def globalBody119_5 : Prog (BitVec 64) :=
.seq globalBody119_3 globalBody119_4

def globalBody119_6 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody119_5

def globalData119 : Decl (BitVec 64) :=
.function { name := "rlp_be_len", inline := false, exported := false, params := [("v", Flapjack.Shape.one)], body := globalBody119_6, returnShape := (Flapjack.Shape.one) }
def globalOutput119 := Pancake.PanLang.declToHOL globalData119
end InitECandidate.Proofs.FrontendStages.Declarations
