import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify172
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body188_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.global "ssz_len_chunk", Flapjack.Exp.const 32#64]

def body188_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_le64"
  [Flapjack.Exp.var Flapjack.VarKind.global "ssz_len_chunk", Flapjack.Exp.var Flapjack.VarKind.local "len"]

def body188_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_pair"
  [Flapjack.Exp.var Flapjack.VarKind.local "root", Flapjack.Exp.var Flapjack.VarKind.global "ssz_len_chunk",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body188_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body188_4 : Prog (BitVec 64) :=
.seq body188_2 body188_3

def body188_5 : Prog (BitVec 64) :=
.seq body188_1 body188_4

def body188_6 : Prog (BitVec 64) :=
.seq body188_0 body188_5

def body188_7 : Prog (BitVec 64) :=
.seq body188_0 body188_1

def body188_8 : Prog (BitVec 64) :=
.seq body188_7 body188_2

def body188_9 : Prog (BitVec 64) :=
.seq body188_8 body188_3

def originalData188 : Decl (BitVec 64) :=
.function { name := "mix_in_length", inline := false, exported := false, params := [("root", Flapjack.Shape.one), ("len", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body188_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData188 : Decl (BitVec 64) :=
.function { name := "mix_in_length", inline := false, exported := false, params := [("root", Flapjack.Shape.one), ("len", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body188_9, returnShape := (Flapjack.Shape.one) }
def original188 := Pancake.PanLang.declToHOL originalData188
def simplified188 := Pancake.PanLang.declToHOL simplifiedData188
end InitECandidate.Proofs.FrontendStages.Declarations
