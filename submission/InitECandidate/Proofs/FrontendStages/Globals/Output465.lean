import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data465
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate449
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody465_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody465_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody465_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "dest"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "dest"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "dest")])
  (Flapjack.Exp.const 0#64)) globalBody465_0 globalBody465_1

def globalBody465_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "d")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
        Flapjack.Exp.const 56#64]))) globalBody465_0 globalBody465_1

def globalBody465_4 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr
        (Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "bm",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                    (Flapjack.Exp.const 6#64),
                  Flapjack.Exp.const 8#64]]))
        (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.const 63#64]),
      Flapjack.Exp.const 1#64])

def globalBody465_5 : Prog (BitVec 64) :=
.dec ("bm") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 80#64])) globalBody465_4

def globalBody465_6 : Prog (BitVec 64) :=
.seq globalBody465_3 globalBody465_5

def globalBody465_7 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "dest")) globalBody465_6

def globalBody465_8 : Prog (BitVec 64) :=
.seq globalBody465_2 globalBody465_7

def globalData465 : Decl (BitVec 64) :=
.function { name := "is_valid_jumpdest", inline := false, exported := false, params := [("dest", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody465_8, returnShape := (Flapjack.Shape.one) }
def globalOutput465 := Pancake.PanLang.declToHOL globalData465
end InitECandidate.Proofs.FrontendStages.Declarations
