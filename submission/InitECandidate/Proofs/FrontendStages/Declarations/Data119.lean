import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify103
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body119_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "v"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 8#64))

def body119_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])

def body119_2 : Prog (BitVec 64) :=
.seq body119_0 body119_1

def body119_3 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 0#64)) body119_2

def body119_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "n")

def body119_5 : Prog (BitVec 64) :=
.seq body119_3 body119_4

def body119_6 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body119_5

def originalData119 : Decl (BitVec 64) :=
.function { name := "rlp_be_len", inline := false, exported := false, params := [("v", Flapjack.Shape.one)], body := body119_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData119 : Decl (BitVec 64) :=
.function { name := "rlp_be_len", inline := false, exported := false, params := [("v", Flapjack.Shape.one)], body := body119_6, returnShape := (Flapjack.Shape.one) }
def original119 := Pancake.PanLang.declToHOL originalData119
def simplified119 := Pancake.PanLang.declToHOL simplifiedData119
end InitECandidate.Proofs.FrontendStages.Declarations
