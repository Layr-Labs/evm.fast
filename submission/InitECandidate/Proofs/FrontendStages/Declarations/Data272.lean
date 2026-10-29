import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify256
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body272_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body272_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "r")

def body272_2 : Prog (BitVec 64) :=
.seq body272_0 body272_1

def body272_3 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("trie_walk") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "nk"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "nk")]) body272_2

def body272_4 : Prog (BitVec 64) :=
.decCall ("nk") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mpt_nibble_key") ([Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.var Flapjack.VarKind.local "key",
  Flapjack.Exp.var Flapjack.VarKind.local "klen"]) body272_3

def body272_5 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body272_4

def originalData272 : Decl (BitVec 64) :=
.function { name := "mpt_get", inline := false, exported := false, params := [("m", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("klen", Flapjack.Shape.one)], body := body272_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData272 : Decl (BitVec 64) :=
.function { name := "mpt_get", inline := false, exported := false, params := [("m", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("klen", Flapjack.Shape.one)], body := body272_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original272 := Pancake.PanLang.declToHOL originalData272
def simplified272 := Pancake.PanLang.declToHOL simplifiedData272
end InitECandidate.Proofs.FrontendStages.Declarations
