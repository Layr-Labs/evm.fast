import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify106
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body122_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body122_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body122_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 55#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")) body122_0 body122_1

def body122_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "ll"])

def body122_4 : Prog (BitVec 64) :=
.decCall ("ll") (Flapjack.Shape.one) ("rlp_be_len") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) body122_3

def body122_5 : Prog (BitVec 64) :=
.seq body122_2 body122_4

def originalData122 : Decl (BitVec 64) :=
.function { name := "rlp_header_len", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := body122_5, returnShape := (Flapjack.Shape.one) }
def simplifiedData122 : Decl (BitVec 64) :=
.function { name := "rlp_header_len", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := body122_5, returnShape := (Flapjack.Shape.one) }
def original122 := Pancake.PanLang.declToHOL originalData122
def simplified122 := Pancake.PanLang.declToHOL simplifiedData122
end InitECandidate.Proofs.FrontendStages.Declarations
