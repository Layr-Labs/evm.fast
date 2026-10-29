import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data293
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate277
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody293_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "m",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 160#64]),
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

def globalBody293_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody293_2 : Prog (BitVec 64) :=
.seq globalBody293_0 globalBody293_1

def globalBody293_3 : Prog (BitVec 64) :=
.decCall ("klen") (Flapjack.Shape.one) ("rlp_encode_word") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 160#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody293_2

def globalBody293_4 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody293_3

def globalBody293_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_root"
  [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody293_6 : Prog (BitVec 64) :=
.seq globalBody293_4 globalBody293_5

def globalBody293_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody293_8 : Prog (BitVec 64) :=
.seq globalBody293_6 globalBody293_7

def globalBody293_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody293_10 : Prog (BitVec 64) :=
.seq globalBody293_8 globalBody293_9

def globalBody293_11 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody293_10

def globalBody293_12 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("mpt_new") ([Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody293_11

def globalBody293_13 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody293_12

def globalData293 : Decl (BitVec 64) :=
.function { name := "build_mpt_indexed", inline := false, exported := false, params := [("slice_arr", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody293_13, returnShape := (Flapjack.Shape.one) }
def globalOutput293 := Pancake.PanLang.declToHOL globalData293
end InitECandidate.Proofs.FrontendStages.Declarations
