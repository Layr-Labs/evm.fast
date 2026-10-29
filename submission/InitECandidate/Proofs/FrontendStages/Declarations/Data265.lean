import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify249
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body265_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (some (Flapjack.VarKind.local, "nd"),
      some
        ("RlpErr", "e",
          Flapjack.Prog.seq
            (Flapjack.Prog.call (some (none, none)) "scratch_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"])
            (Flapjack.Prog.raise "RlpErr" (Flapjack.Exp.var Flapjack.VarKind.local "e")))))
  "_decode_witness_node_mpt"
  [Flapjack.Exp.var Flapjack.VarKind.local "db", Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body265_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "scratch_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body265_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "nd")

def body265_3 : Prog (BitVec 64) :=
.seq body265_1 body265_2

def body265_4 : Prog (BitVec 64) :=
.seq body265_0 body265_3

def body265_5 : Prog (BitVec 64) :=
.dec ("nd") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body265_4

def body265_6 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body265_5

def body265_7 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("scratch_mark") ([]) body265_6

def body265_8 : Prog (BitVec 64) :=
.seq body265_0 body265_1

def body265_9 : Prog (BitVec 64) :=
.seq body265_8 body265_2

def body265_10 : Prog (BitVec 64) :=
.dec ("nd") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body265_9

def body265_11 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body265_10

def body265_12 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("scratch_mark") ([]) body265_11

def originalData265 : Decl (BitVec 64) :=
.function { name := "_decode_witness_node", inline := false, exported := false, params := [("db", Flapjack.Shape.one), ("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body265_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData265 : Decl (BitVec 64) :=
.function { name := "_decode_witness_node", inline := false, exported := false, params := [("db", Flapjack.Shape.one), ("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body265_12, returnShape := (Flapjack.Shape.one) }
def original265 := Pancake.PanLang.declToHOL originalData265
def simplified265 := Pancake.PanLang.declToHOL simplifiedData265
end InitECandidate.Proofs.FrontendStages.Declarations
