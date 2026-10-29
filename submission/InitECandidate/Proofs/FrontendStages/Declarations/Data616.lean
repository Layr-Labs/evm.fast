import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify600
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body616_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1352829926#64)

def body616_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body616_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 16#64)) body616_0 body616_1

def body616_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1548603684#64)

def body616_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 32#64)) body616_3 body616_1

def body616_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1836072691#64)

def body616_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 48#64)) body616_5 body616_1

def body616_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 2053994217#64)

def body616_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 64#64)) body616_7 body616_1

def body616_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body616_10 : Prog (BitVec 64) :=
.seq body616_8 body616_9

def body616_11 : Prog (BitVec 64) :=
.seq body616_6 body616_10

def body616_12 : Prog (BitVec 64) :=
.seq body616_4 body616_11

def body616_13 : Prog (BitVec 64) :=
.seq body616_2 body616_12

def body616_14 : Prog (BitVec 64) :=
.seq body616_2 body616_4

def body616_15 : Prog (BitVec 64) :=
.seq body616_14 body616_6

def body616_16 : Prog (BitVec 64) :=
.seq body616_15 body616_8

def body616_17 : Prog (BitVec 64) :=
.seq body616_16 body616_9

def originalData616 : Decl (BitVec 64) :=
.function { name := "rmd_kp", inline := false, exported := false, params := [("j", Flapjack.Shape.one)], body := body616_13, returnShape := (Flapjack.Shape.one) }
def simplifiedData616 : Decl (BitVec 64) :=
.function { name := "rmd_kp", inline := false, exported := false, params := [("j", Flapjack.Shape.one)], body := body616_17, returnShape := (Flapjack.Shape.one) }
def original616 := Pancake.PanLang.declToHOL originalData616
def simplified616 := Pancake.PanLang.declToHOL simplifiedData616
end InitECandidate.Proofs.FrontendStages.Declarations
