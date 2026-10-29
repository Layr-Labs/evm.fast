import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify215
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body231_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "e"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "e"), Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body231_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body231_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body231_3 : Prog (BitVec 64) :=
.seq body231_1 body231_2

def body231_4 : Prog (BitVec 64) :=
.seq body231_0 body231_3

def body231_5 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_header") ([Flapjack.Exp.var Flapjack.VarKind.local "h"]) body231_4

def body231_6 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body231_5

def body231_7 : Prog (BitVec 64) :=
.seq body231_0 body231_1

def body231_8 : Prog (BitVec 64) :=
.seq body231_7 body231_2

def body231_9 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_header") ([Flapjack.Exp.var Flapjack.VarKind.local "h"]) body231_8

def body231_10 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body231_9

def originalData231 : Decl (BitVec 64) :=
.function { name := "header_hash", inline := false, exported := false, params := [("h", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body231_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData231 : Decl (BitVec 64) :=
.function { name := "header_hash", inline := false, exported := false, params := [("h", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body231_10, returnShape := (Flapjack.Shape.one) }
def original231 := Pancake.PanLang.declToHOL originalData231
def simplified231 := Pancake.PanLang.declToHOL simplifiedData231
end InitECandidate.Proofs.FrontendStages.Declarations
