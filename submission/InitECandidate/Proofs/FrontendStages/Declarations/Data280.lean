import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify264
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body280_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (some (Flapjack.VarKind.local, "res"),
      some
        ("MptErr", "e",
          Flapjack.Prog.seq
            (Flapjack.Prog.call (some (none, none)) "scratch_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"])
            (Flapjack.Prog.raise "MptErr" (Flapjack.Exp.var Flapjack.VarKind.local "e")))))
  "_mpt_delete_node_body"
  [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.var Flapjack.VarKind.local "key",
    Flapjack.Exp.var Flapjack.VarKind.local "klen", Flapjack.Exp.var Flapjack.VarKind.local "level"]

def body280_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "scratch_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body280_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "res")

def body280_3 : Prog (BitVec 64) :=
.seq body280_1 body280_2

def body280_4 : Prog (BitVec 64) :=
.seq body280_0 body280_3

def body280_5 : Prog (BitVec 64) :=
.dec ("res") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body280_4

def body280_6 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body280_5

def body280_7 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("scratch_mark") ([]) body280_6

def body280_8 : Prog (BitVec 64) :=
.seq body280_0 body280_1

def body280_9 : Prog (BitVec 64) :=
.seq body280_8 body280_2

def body280_10 : Prog (BitVec 64) :=
.dec ("res") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body280_9

def body280_11 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body280_10

def body280_12 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("scratch_mark") ([]) body280_11

def originalData280 : Decl (BitVec 64) :=
.function { name := "_mpt_delete_node", inline := false, exported := false, params := [("node", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("klen", Flapjack.Shape.one), ("level", Flapjack.Shape.one)], body := body280_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData280 : Decl (BitVec 64) :=
.function { name := "_mpt_delete_node", inline := false, exported := false, params := [("node", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("klen", Flapjack.Shape.one), ("level", Flapjack.Shape.one)], body := body280_12, returnShape := (Flapjack.Shape.one) }
def original280 := Pancake.PanLang.declToHOL originalData280
def simplified280 := Pancake.PanLang.declToHOL simplifiedData280
end InitECandidate.Proofs.FrontendStages.Declarations
