import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data109
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate87
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody109_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 6#64]

def globalBody109_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody109_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "it"))
  (Flapjack.Exp.var Flapjack.VarKind.local "len")) globalBody109_0 globalBody109_1

def globalBody109_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "it")

def globalBody109_4 : Prog (BitVec 64) :=
.seq globalBody109_2 globalBody109_3

def globalBody109_5 : Prog (BitVec 64) :=
.decCall ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"]) globalBody109_4

def globalData109 : Decl (BitVec 64) :=
.function { name := "rlp_decode_fully", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := globalBody109_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput109 := Pancake.PanLang.declToHOL globalData109
end InitECandidate.Proofs.FrontendStages.Declarations
