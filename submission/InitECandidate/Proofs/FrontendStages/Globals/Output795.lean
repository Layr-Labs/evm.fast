import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data795
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate779
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody795_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "v",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "kp",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64],
            Flapjack.Exp.const 96#64]]]

def globalBody795_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "v",
    Flapjack.Exp.var Flapjack.VarKind.local "x"]

def globalBody795_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "w",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "zp",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 96#64]],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "kp",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.op Flapjack.BinOp.sub
              [Flapjack.Exp.op Flapjack.BinOp.sub
                  [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 2#64],
                Flapjack.Exp.var Flapjack.VarKind.local "j"],
            Flapjack.Exp.const 96#64]]]

def globalBody795_3 : Prog (BitVec 64) :=
.seq globalBody795_1 globalBody795_2

def globalBody795_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "v",
    Flapjack.Exp.var Flapjack.VarKind.local "w"]

def globalBody795_5 : Prog (BitVec 64) :=
.seq globalBody795_3 globalBody795_4

def globalBody795_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def globalBody795_7 : Prog (BitVec 64) :=
.seq globalBody795_5 globalBody795_6

def globalBody795_8 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])) globalBody795_7

def globalBody795_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "v"]

def globalBody795_10 : Prog (BitVec 64) :=
.seq globalBody795_8 globalBody795_9

def globalBody795_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody795_12 : Prog (BitVec 64) :=
.seq globalBody795_10 globalBody795_11

def globalBody795_13 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody795_14 : Prog (BitVec 64) :=
.seq globalBody795_12 globalBody795_13

def globalBody795_15 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody795_14

def globalBody795_16 : Prog (BitVec 64) :=
.seq globalBody795_0 globalBody795_15

def globalBody795_17 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody795_16

def globalBody795_18 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody795_17

def globalBody795_19 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody795_18

def globalData795 : Decl (BitVec 64) :=
.function { name := "iso_horner_fp2", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("kp", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("x", Flapjack.Shape.one),
  ("zp", Flapjack.Shape.one)], body := globalBody795_19, returnShape := (Flapjack.Shape.one) }
def globalOutput795 := Pancake.PanLang.declToHOL globalData795
end InitECandidate.Proofs.FrontendStages.Declarations
