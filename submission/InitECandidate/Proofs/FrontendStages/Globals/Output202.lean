import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data202
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate186
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody202_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody202_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody202_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) globalBody202_0 globalBody202_1

def globalBody202_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 10#64]

def globalBody202_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "o")
        (Flapjack.Exp.var Flapjack.VarKind.local "fixed"),
      Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "len")
        (Flapjack.Exp.var Flapjack.VarKind.local "o")])) globalBody202_3 globalBody202_1

def globalBody202_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 11#64]

def globalBody202_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "o")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "offs",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]],
        Flapjack.Exp.const 8#64]))) globalBody202_5 globalBody202_1

def globalBody202_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody202_6 globalBody202_1

def globalBody202_8 : Prog (BitVec 64) :=
.seq globalBody202_4 globalBody202_7

def globalBody202_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody202_10 : Prog (BitVec 64) :=
.seq globalBody202_8 globalBody202_9

def globalBody202_11 : Prog (BitVec 64) :=
.dec ("o") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "offs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])) globalBody202_10

def globalBody202_12 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody202_11

def globalBody202_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 12#64]

def globalBody202_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "offs"))
  (Flapjack.Exp.var Flapjack.VarKind.local "fixed")) globalBody202_13 globalBody202_1

def globalBody202_15 : Prog (BitVec 64) :=
.seq globalBody202_12 globalBody202_14

def globalBody202_16 : Prog (BitVec 64) :=
.seq globalBody202_15 globalBody202_0

def globalBody202_17 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody202_16

def globalBody202_18 : Prog (BitVec 64) :=
.seq globalBody202_2 globalBody202_17

def globalData202 : Decl (BitVec 64) :=
.function { name := "ssz_check_offsets", inline := false, exported := false, params := [("offs", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("fixed", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := globalBody202_18, returnShape := (Flapjack.Shape.one) }
def globalOutput202 := Pancake.PanLang.declToHOL globalData202
end InitECandidate.Proofs.FrontendStages.Declarations
