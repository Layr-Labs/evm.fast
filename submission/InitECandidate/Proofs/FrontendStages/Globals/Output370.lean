import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data370
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate347
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody370_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody370_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody370_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody370_0 globalBody370_1

def globalBody370_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "h"]

def globalBody370_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody370_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r"))
  (Flapjack.Exp.const 0#64)) globalBody370_0 globalBody370_1

def globalBody370_6 : Prog (BitVec 64) :=
.seq globalBody370_4 globalBody370_5

def globalBody370_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "it"))
  (Flapjack.Exp.const 1#64)) globalBody370_0 globalBody370_1

def globalBody370_8 : Prog (BitVec 64) :=
Flapjack.Prog.raise "StateErr" (Flapjack.Exp.const 1#64)

def globalBody370_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 32#64)
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it"))) globalBody370_8 globalBody370_1

def globalBody370_10 : Prog (BitVec 64) :=
.seq globalBody370_7 globalBody370_9

def globalBody370_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "v")

def globalBody370_12 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "it"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it")]) globalBody370_11

def globalBody370_13 : Prog (BitVec 64) :=
.seq globalBody370_10 globalBody370_12

def globalBody370_14 : Prog (BitVec 64) :=
.decCall ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_decode_fully") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "r")]) globalBody370_13

def globalBody370_15 : Prog (BitVec 64) :=
.seq globalBody370_6 globalBody370_14

def globalBody370_16 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("trie_lookup") ([Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.var Flapjack.VarKind.local "h"]) globalBody370_15

def globalBody370_17 : Prog (BitVec 64) :=
.seq globalBody370_3 globalBody370_16

def globalBody370_18 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody370_17

def globalBody370_19 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody370_18

def globalBody370_20 : Prog (BitVec 64) :=
.decCall ("node") (Flapjack.Shape.one) ("ws_storage_trie") ([Flapjack.Exp.var Flapjack.VarKind.local "root"]) globalBody370_19

def globalBody370_21 : Prog (BitVec 64) :=
.seq globalBody370_2 globalBody370_20

def globalBody370_22 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "root",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 128#64]),
  Flapjack.Exp.const 32#64]) globalBody370_21

def globalBody370_23 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("ws_storage_root_of") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody370_22

def globalData370 : Decl (BitVec 64) :=
.function { name := "ws_get_storage", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("key", Flapjack.Shape.one)], body := globalBody370_23, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput370 := Pancake.PanLang.declToHOL globalData370
end InitECandidate.Proofs.FrontendStages.Declarations
