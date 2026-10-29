import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify96
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body112_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("RlpErr", "e",
          Flapjack.Prog.seq
            (Flapjack.Prog.call (some (none, none)) "scratch_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"])
            (Flapjack.Prog.raise "RlpErr" (Flapjack.Exp.var Flapjack.VarKind.local "e")))))
  "_rlp_validate_items_body"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"]

def body112_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "scratch_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body112_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body112_3 : Prog (BitVec 64) :=
.seq body112_1 body112_2

def body112_4 : Prog (BitVec 64) :=
.seq body112_0 body112_3

def body112_5 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body112_4

def body112_6 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("scratch_mark") ([]) body112_5

def body112_7 : Prog (BitVec 64) :=
.seq body112_0 body112_1

def body112_8 : Prog (BitVec 64) :=
.seq body112_7 body112_2

def body112_9 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body112_8

def body112_10 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("scratch_mark") ([]) body112_9

def originalData112 : Decl (BitVec 64) :=
.function { name := "rlp_validate_items", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body112_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData112 : Decl (BitVec 64) :=
.function { name := "rlp_validate_items", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body112_10, returnShape := (Flapjack.Shape.one) }
def original112 := Pancake.PanLang.declToHOL originalData112
def simplified112 := Pancake.PanLang.declToHOL simplifiedData112
end InitECandidate.Proofs.FrontendStages.Declarations
