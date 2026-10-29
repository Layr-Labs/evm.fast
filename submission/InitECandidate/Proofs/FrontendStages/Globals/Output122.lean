import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data122
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate106
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody122_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody122_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody122_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 55#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody122_0 globalBody122_1

def globalBody122_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "ll"])

def globalBody122_4 : Prog (BitVec 64) :=
.decCall ("ll") (Flapjack.Shape.one) ("rlp_be_len") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) globalBody122_3

def globalBody122_5 : Prog (BitVec 64) :=
.seq globalBody122_2 globalBody122_4

def globalData122 : Decl (BitVec 64) :=
.function { name := "rlp_header_len", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := globalBody122_5, returnShape := (Flapjack.Shape.one) }
def globalOutput122 := Pancake.PanLang.declToHOL globalData122
end InitECandidate.Proofs.FrontendStages.Declarations
