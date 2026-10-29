import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify354
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body370_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body370_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body370_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body370_0 body370_1

def body370_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "h"]

def body370_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body370_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r"))
  (Flapjack.Exp.const 0#64)) body370_0 body370_1

def body370_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "it"))
  (Flapjack.Exp.const 1#64)) body370_0 body370_1

def body370_7 : Prog (BitVec 64) :=
Flapjack.Prog.raise "StateErr" (Flapjack.Exp.const 1#64)

def body370_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 32#64)
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it"))) body370_7 body370_1

def body370_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body370_10 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "it"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it")]) body370_9

def body370_11 : Prog (BitVec 64) :=
.seq body370_8 body370_10

def body370_12 : Prog (BitVec 64) :=
.seq body370_6 body370_11

def body370_13 : Prog (BitVec 64) :=
.decCall ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_decode_fully") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "r")]) body370_12

def body370_14 : Prog (BitVec 64) :=
.seq body370_5 body370_13

def body370_15 : Prog (BitVec 64) :=
.seq body370_4 body370_14

def body370_16 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("trie_lookup") ([Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.var Flapjack.VarKind.local "h"]) body370_15

def body370_17 : Prog (BitVec 64) :=
.seq body370_3 body370_16

def body370_18 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body370_17

def body370_19 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body370_18

def body370_20 : Prog (BitVec 64) :=
.decCall ("node") (Flapjack.Shape.one) ("ws_storage_trie") ([Flapjack.Exp.var Flapjack.VarKind.local "root"]) body370_19

def body370_21 : Prog (BitVec 64) :=
.seq body370_2 body370_20

def body370_22 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "root", Flapjack.Exp.var Flapjack.VarKind.global "empty_trie_root",
  Flapjack.Exp.const 32#64]) body370_21

def body370_23 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("ws_storage_root_of") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body370_22

def body370_24 : Prog (BitVec 64) :=
.seq body370_4 body370_5

def body370_25 : Prog (BitVec 64) :=
.seq body370_6 body370_8

def body370_26 : Prog (BitVec 64) :=
.seq body370_25 body370_10

def body370_27 : Prog (BitVec 64) :=
.decCall ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_decode_fully") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "r")]) body370_26

def body370_28 : Prog (BitVec 64) :=
.seq body370_24 body370_27

def body370_29 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("trie_lookup") ([Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.var Flapjack.VarKind.local "h"]) body370_28

def body370_30 : Prog (BitVec 64) :=
.seq body370_3 body370_29

def body370_31 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body370_30

def body370_32 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body370_31

def body370_33 : Prog (BitVec 64) :=
.decCall ("node") (Flapjack.Shape.one) ("ws_storage_trie") ([Flapjack.Exp.var Flapjack.VarKind.local "root"]) body370_32

def body370_34 : Prog (BitVec 64) :=
.seq body370_2 body370_33

def body370_35 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "root", Flapjack.Exp.var Flapjack.VarKind.global "empty_trie_root",
  Flapjack.Exp.const 32#64]) body370_34

def body370_36 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("ws_storage_root_of") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body370_35

def originalData370 : Decl (BitVec 64) :=
.function { name := "ws_get_storage", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("key", Flapjack.Shape.one)], body := body370_23, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData370 : Decl (BitVec 64) :=
.function { name := "ws_get_storage", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("key", Flapjack.Shape.one)], body := body370_36, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original370 := Pancake.PanLang.declToHOL originalData370
def simplified370 := Pancake.PanLang.declToHOL simplifiedData370
end InitECandidate.Proofs.FrontendStages.Declarations
