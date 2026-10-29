import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify599
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body615_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body615_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body615_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 16#64)) body615_0 body615_1

def body615_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1518500249#64)

def body615_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 32#64)) body615_3 body615_1

def body615_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1859775393#64)

def body615_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 48#64)) body615_5 body615_1

def body615_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 2400959708#64)

def body615_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 64#64)) body615_7 body615_1

def body615_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 2840853838#64)

def body615_10 : Prog (BitVec 64) :=
.seq body615_8 body615_9

def body615_11 : Prog (BitVec 64) :=
.seq body615_6 body615_10

def body615_12 : Prog (BitVec 64) :=
.seq body615_4 body615_11

def body615_13 : Prog (BitVec 64) :=
.seq body615_2 body615_12

def body615_14 : Prog (BitVec 64) :=
.seq body615_2 body615_4

def body615_15 : Prog (BitVec 64) :=
.seq body615_14 body615_6

def body615_16 : Prog (BitVec 64) :=
.seq body615_15 body615_8

def body615_17 : Prog (BitVec 64) :=
.seq body615_16 body615_9

def originalData615 : Decl (BitVec 64) :=
.function { name := "rmd_k", inline := false, exported := false, params := [("j", Flapjack.Shape.one)], body := body615_13, returnShape := (Flapjack.Shape.one) }
def simplifiedData615 : Decl (BitVec 64) :=
.function { name := "rmd_k", inline := false, exported := false, params := [("j", Flapjack.Shape.one)], body := body615_17, returnShape := (Flapjack.Shape.one) }
def original615 := Pancake.PanLang.declToHOL originalData615
def simplified615 := Pancake.PanLang.declToHOL simplifiedData615
end InitECandidate.Proofs.FrontendStages.Declarations
