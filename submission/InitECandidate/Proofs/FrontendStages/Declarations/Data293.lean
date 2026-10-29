import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify277
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body293_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.var Flapjack.VarKind.global "mpt_key_scratch",
    Flapjack.Exp.var Flapjack.VarKind.local "klen",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "slice_arr",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "slice_arr",
          Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
          Flapjack.Exp.const 8#64])]

def body293_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body293_2 : Prog (BitVec 64) :=
.seq body293_0 body293_1

def body293_3 : Prog (BitVec 64) :=
.decCall ("klen") (Flapjack.Shape.one) ("rlp_encode_word") ([Flapjack.Exp.var Flapjack.VarKind.global "mpt_key_scratch", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body293_2

def body293_4 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body293_3

def body293_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_root"
  [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body293_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body293_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body293_8 : Prog (BitVec 64) :=
.seq body293_6 body293_7

def body293_9 : Prog (BitVec 64) :=
.seq body293_5 body293_8

def body293_10 : Prog (BitVec 64) :=
.seq body293_4 body293_9

def body293_11 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body293_10

def body293_12 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("mpt_new") ([Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body293_11

def body293_13 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body293_12

def body293_14 : Prog (BitVec 64) :=
.seq body293_4 body293_5

def body293_15 : Prog (BitVec 64) :=
.seq body293_14 body293_6

def body293_16 : Prog (BitVec 64) :=
.seq body293_15 body293_7

def body293_17 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body293_16

def body293_18 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("mpt_new") ([Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body293_17

def body293_19 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body293_18

def originalData293 : Decl (BitVec 64) :=
.function { name := "build_mpt_indexed", inline := false, exported := false, params := [("slice_arr", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body293_13, returnShape := (Flapjack.Shape.one) }
def simplifiedData293 : Decl (BitVec 64) :=
.function { name := "build_mpt_indexed", inline := false, exported := false, params := [("slice_arr", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body293_19, returnShape := (Flapjack.Shape.one) }
def original293 := Pancake.PanLang.declToHOL originalData293
def simplified293 := Pancake.PanLang.declToHOL simplifiedData293
end InitECandidate.Proofs.FrontendStages.Declarations
