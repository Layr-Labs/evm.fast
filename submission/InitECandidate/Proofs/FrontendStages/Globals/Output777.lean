import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data777
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate761
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody777_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_set_inf" [Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def globalBody777_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody777_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_double"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def globalBody777_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody777_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "started") (Flapjack.Exp.const 1#64)) globalBody777_2 globalBody777_3

def globalBody777_5 : Prog (BitVec 64) :=
.seq globalBody777_1 globalBody777_4

def globalBody777_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "acc",
    Flapjack.Exp.var Flapjack.VarKind.local "p"]

def globalBody777_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "started" (Flapjack.Exp.const 1#64)

def globalBody777_8 : Prog (BitVec 64) :=
.seq globalBody777_6 globalBody777_7

def globalBody777_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "bit") (Flapjack.Exp.const 1#64)) globalBody777_8 globalBody777_3

def globalBody777_10 : Prog (BitVec 64) :=
.dec ("bit") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr
      (Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "kptr",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "i")
                  (Flapjack.Exp.const 6#64),
                Flapjack.Exp.const 8#64]]))
      (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 63#64]),
    Flapjack.Exp.const 1#64]) globalBody777_9

def globalBody777_11 : Prog (BitVec 64) :=
.seq globalBody777_5 globalBody777_10

def globalBody777_12 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody777_11

def globalBody777_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def globalBody777_14 : Prog (BitVec 64) :=
.seq globalBody777_12 globalBody777_13

def globalBody777_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody777_16 : Prog (BitVec 64) :=
.seq globalBody777_14 globalBody777_15

def globalBody777_17 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody777_18 : Prog (BitVec 64) :=
.seq globalBody777_16 globalBody777_17

def globalBody777_19 : Prog (BitVec 64) :=
.dec ("started") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody777_18

def globalBody777_20 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 64#64]) globalBody777_19

def globalBody777_21 : Prog (BitVec 64) :=
.seq globalBody777_0 globalBody777_20

def globalBody777_22 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) globalBody777_21

def globalBody777_23 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody777_22

def globalData777 : Decl (BitVec 64) :=
.function { name := "g2_mul", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one), ("kptr", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody777_23, returnShape := (Flapjack.Shape.one) }
def globalOutput777 := Pancake.PanLang.declToHOL globalData777
end InitECandidate.Proofs.FrontendStages.Declarations
