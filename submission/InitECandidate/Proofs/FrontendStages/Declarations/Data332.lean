import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify316
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body332_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "e"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "e"), Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body332_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body332_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body332_3 : Prog (BitVec 64) :=
.seq body332_1 body332_2

def body332_4 : Prog (BitVec 64) :=
.seq body332_0 body332_3

def body332_5 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_encode_generic") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "mode",
  Flapjack.Exp.var Flapjack.VarKind.local "chain_id"]) body332_4

def body332_6 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body332_5

def body332_7 : Prog (BitVec 64) :=
.seq body332_0 body332_1

def body332_8 : Prog (BitVec 64) :=
.seq body332_7 body332_2

def body332_9 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_encode_generic") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "mode",
  Flapjack.Exp.var Flapjack.VarKind.local "chain_id"]) body332_8

def body332_10 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body332_9

def originalData332 : Decl (BitVec 64) :=
.function { name := "tx_signing_hash_mode", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("mode", Flapjack.Shape.one), ("chain_id", Flapjack.Shape.one),
  ("out", Flapjack.Shape.one)], body := body332_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData332 : Decl (BitVec 64) :=
.function { name := "tx_signing_hash_mode", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("mode", Flapjack.Shape.one), ("chain_id", Flapjack.Shape.one),
  ("out", Flapjack.Shape.one)], body := body332_10, returnShape := (Flapjack.Shape.one) }
def original332 := Pancake.PanLang.declToHOL originalData332
def simplified332 := Pancake.PanLang.declToHOL simplifiedData332
end InitECandidate.Proofs.FrontendStages.Declarations
