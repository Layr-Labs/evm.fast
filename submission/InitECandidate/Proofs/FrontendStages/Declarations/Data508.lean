import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify492
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body508_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 1#64]

def body508_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body508_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body508_3 : Prog (BitVec 64) :=
.seq body508_1 body508_2

def body508_4 : Prog (BitVec 64) :=
.seq body508_0 body508_3

def body508_5 : Prog (BitVec 64) :=
.seq body508_0 body508_1

def body508_6 : Prog (BitVec 64) :=
.seq body508_5 body508_2

def originalData508 : Decl (BitVec 64) :=
.function { name := "op_jumpdest", inline := false, exported := false, params := [], body := body508_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData508 : Decl (BitVec 64) :=
.function { name := "op_jumpdest", inline := false, exported := false, params := [], body := body508_6, returnShape := (Flapjack.Shape.one) }
def original508 := Pancake.PanLang.declToHOL originalData508
def simplified508 := Pancake.PanLang.declToHOL simplifiedData508
end InitECandidate.Proofs.FrontendStages.Declarations
