import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify276
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body292_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.global "empty_trie_root",
    Flapjack.Exp.const 32#64]

def body292_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body292_2 : Prog (BitVec 64) :=
.seq body292_0 body292_1

def body292_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body292_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "root") (Flapjack.Exp.const 0#64)) body292_2 body292_3

def body292_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 32#64]

def body292_6 : Prog (BitVec 64) :=
.seq body292_5 body292_1

def body292_7 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("node_hash") ([Flapjack.Exp.var Flapjack.VarKind.local "root"]) body292_6

def body292_8 : Prog (BitVec 64) :=
.seq body292_4 body292_7

def body292_9 : Prog (BitVec 64) :=
.dec ("root") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 0#64])) body292_8

def originalData292 : Decl (BitVec 64) :=
.function { name := "mpt_root", inline := false, exported := false, params := [("m", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body292_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData292 : Decl (BitVec 64) :=
.function { name := "mpt_root", inline := false, exported := false, params := [("m", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body292_9, returnShape := (Flapjack.Shape.one) }
def original292 := Pancake.PanLang.declToHOL originalData292
def simplified292 := Pancake.PanLang.declToHOL simplifiedData292
end InitECandidate.Proofs.FrontendStages.Declarations
