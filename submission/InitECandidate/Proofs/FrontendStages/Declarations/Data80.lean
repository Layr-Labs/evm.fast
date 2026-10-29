import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify64
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body80_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 7#64])
    (Flapjack.Exp.const 3#64))

def body80_1 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) body80_0

def originalData80 : Decl (BitVec 64) :=
.function { name := "u256_byte_length", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body80_1, returnShape := (Flapjack.Shape.one) }
def simplifiedData80 : Decl (BitVec 64) :=
.function { name := "u256_byte_length", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body80_1, returnShape := (Flapjack.Shape.one) }
def original80 := Pancake.PanLang.declToHOL originalData80
def simplified80 := Pancake.PanLang.declToHOL simplifiedData80
end InitECandidate.Proofs.FrontendStages.Declarations
