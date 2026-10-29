import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify622
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body638_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pt")
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body638_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body638_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body638_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body638_4 : Prog (BitVec 64) :=
.seq body638_2 body638_3

def body638_5 : Prog (BitVec 64) :=
.seq body638_1 body638_4

def body638_6 : Prog (BitVec 64) :=
.seq body638_0 body638_5

def body638_7 : Prog (BitVec 64) :=
.seq body638_0 body638_1

def body638_8 : Prog (BitVec 64) :=
.seq body638_7 body638_2

def body638_9 : Prog (BitVec 64) :=
.seq body638_8 body638_3

def originalData638 : Decl (BitVec 64) :=
.function { name := "p256_set_infinity", inline := false, exported := false, params := [("pt", Flapjack.Shape.one)], body := body638_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData638 : Decl (BitVec 64) :=
.function { name := "p256_set_infinity", inline := false, exported := false, params := [("pt", Flapjack.Shape.one)], body := body638_9, returnShape := (Flapjack.Shape.one) }
def original638 := Pancake.PanLang.declToHOL originalData638
def simplified638 := Pancake.PanLang.declToHOL simplifiedData638
end InitECandidate.Proofs.FrontendStages.Declarations
