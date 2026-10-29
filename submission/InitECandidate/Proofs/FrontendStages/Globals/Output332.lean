import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data332
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate316
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody332_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "e"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "e"), Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody332_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody332_2 : Prog (BitVec 64) :=
.seq globalBody332_0 globalBody332_1

def globalBody332_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody332_4 : Prog (BitVec 64) :=
.seq globalBody332_2 globalBody332_3

def globalBody332_5 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_encode_generic") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "mode",
  Flapjack.Exp.var Flapjack.VarKind.local "chain_id"]) globalBody332_4

def globalBody332_6 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody332_5

def globalData332 : Decl (BitVec 64) :=
.function { name := "tx_signing_hash_mode", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("mode", Flapjack.Shape.one), ("chain_id", Flapjack.Shape.one),
  ("out", Flapjack.Shape.one)], body := globalBody332_6, returnShape := (Flapjack.Shape.one) }
def globalOutput332 := Pancake.PanLang.declToHOL globalData332
end InitECandidate.Proofs.FrontendStages.Declarations
