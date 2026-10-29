import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify232
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body248_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "empty_trie_root"), none)) "alloc" [Flapjack.Exp.const 32#64]

def body248_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "empty_code_hash"), none)) "alloc" [Flapjack.Exp.const 32#64]

def body248_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "mpt_nib_scratch"), none)) "alloc" [Flapjack.Exp.const 64#64]

def body248_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "mpt_hash_scratch"), none)) "alloc" [Flapjack.Exp.const 40#64]

def body248_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "mpt_key_scratch"), none)) "alloc" [Flapjack.Exp.const 16#64]

def body248_5 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.global "mpt_hash_scratch") (Flapjack.Exp.const 128#64)

def body248_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.global "mpt_hash_scratch", Flapjack.Exp.const 1#64,
    Flapjack.Exp.var Flapjack.VarKind.global "empty_trie_root"]

def body248_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.global "mpt_hash_scratch", Flapjack.Exp.const 0#64,
    Flapjack.Exp.var Flapjack.VarKind.global "empty_code_hash"]

def body248_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body248_9 : Prog (BitVec 64) :=
.seq body248_7 body248_8

def body248_10 : Prog (BitVec 64) :=
.seq body248_6 body248_9

def body248_11 : Prog (BitVec 64) :=
.seq body248_5 body248_10

def body248_12 : Prog (BitVec 64) :=
.seq body248_4 body248_11

def body248_13 : Prog (BitVec 64) :=
.seq body248_3 body248_12

def body248_14 : Prog (BitVec 64) :=
.seq body248_2 body248_13

def body248_15 : Prog (BitVec 64) :=
.seq body248_1 body248_14

def body248_16 : Prog (BitVec 64) :=
.seq body248_0 body248_15

def body248_17 : Prog (BitVec 64) :=
.seq body248_0 body248_1

def body248_18 : Prog (BitVec 64) :=
.seq body248_17 body248_2

def body248_19 : Prog (BitVec 64) :=
.seq body248_18 body248_3

def body248_20 : Prog (BitVec 64) :=
.seq body248_19 body248_4

def body248_21 : Prog (BitVec 64) :=
.seq body248_20 body248_5

def body248_22 : Prog (BitVec 64) :=
.seq body248_21 body248_6

def body248_23 : Prog (BitVec 64) :=
.seq body248_22 body248_7

def body248_24 : Prog (BitVec 64) :=
.seq body248_23 body248_8

def originalData248 : Decl (BitVec 64) :=
.function { name := "mpt_init", inline := false, exported := false, params := [], body := body248_16, returnShape := (Flapjack.Shape.one) }
def simplifiedData248 : Decl (BitVec 64) :=
.function { name := "mpt_init", inline := false, exported := false, params := [], body := body248_24, returnShape := (Flapjack.Shape.one) }
def original248 := Pancake.PanLang.declToHOL originalData248
def simplified248 := Pancake.PanLang.declToHOL simplifiedData248
end InitECandidate.Proofs.FrontendStages.Declarations
