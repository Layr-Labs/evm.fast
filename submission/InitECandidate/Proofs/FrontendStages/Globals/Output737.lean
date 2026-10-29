import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data737
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate721
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody737_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "base", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody737_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_one" [Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def globalBody737_2 : Prog (BitVec 64) :=
.seq globalBody737_0 globalBody737_1

def globalBody737_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody737_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def globalBody737_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody737_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "started") (Flapjack.Exp.const 1#64)) globalBody737_4 globalBody737_5

def globalBody737_7 : Prog (BitVec 64) :=
.seq globalBody737_3 globalBody737_6

def globalBody737_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "acc",
    Flapjack.Exp.var Flapjack.VarKind.local "base"]

def globalBody737_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "started" (Flapjack.Exp.const 1#64)

def globalBody737_10 : Prog (BitVec 64) :=
.seq globalBody737_8 globalBody737_9

def globalBody737_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "bit") (Flapjack.Exp.const 1#64)) globalBody737_10 globalBody737_5

def globalBody737_12 : Prog (BitVec 64) :=
.dec ("bit") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr
      (Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "eptr",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "i")
                  (Flapjack.Exp.const 6#64),
                Flapjack.Exp.const 8#64]]))
      (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 63#64]),
    Flapjack.Exp.const 1#64]) globalBody737_11

def globalBody737_13 : Prog (BitVec 64) :=
.seq globalBody737_7 globalBody737_12

def globalBody737_14 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody737_13

def globalBody737_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def globalBody737_16 : Prog (BitVec 64) :=
.seq globalBody737_14 globalBody737_15

def globalBody737_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody737_18 : Prog (BitVec 64) :=
.seq globalBody737_16 globalBody737_17

def globalBody737_19 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody737_20 : Prog (BitVec 64) :=
.seq globalBody737_18 globalBody737_19

def globalBody737_21 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 64#64]) globalBody737_20

def globalBody737_22 : Prog (BitVec 64) :=
.dec ("started") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody737_21

def globalBody737_23 : Prog (BitVec 64) :=
.seq globalBody737_2 globalBody737_22

def globalBody737_24 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody737_23

def globalBody737_25 : Prog (BitVec 64) :=
.decCall ("base") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody737_24

def globalBody737_26 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody737_25

def globalData737 : Decl (BitVec 64) :=
.function { name := "fp2_pow", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one), ("eptr", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody737_26, returnShape := (Flapjack.Shape.one) }
def globalOutput737 := Pancake.PanLang.declToHOL globalData737
end InitECandidate.Proofs.FrontendStages.Declarations
