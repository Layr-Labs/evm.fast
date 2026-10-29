import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints766.Data.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints766
theorem node768_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_766 (830, 6) = (output768, (830, 6)) := by
  rw [output768_def]
  kernel_rfl

theorem node769_conditional
    (child768 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_766 (830, 6) = (output768, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_767 (830, 6) = (output769, (830, 6)) := by
  rw [output769_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child768

theorem node770_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_768 (830, 6) = (output770, (830, 6)) := by
  rw [output770_def]
  kernel_rfl

theorem node771_conditional
    (child770 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_768 (830, 6) = (output770, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_769 (830, 6) = (output771, (830, 6)) := by
  rw [output771_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child770

theorem node772_conditional
    (child771 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_769 (830, 6) = (output771, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_770 (830, 6) = (output772, (830, 6)) := by
  rw [output772_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child771 child99

theorem node773_conditional
    (child772 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_770 (830, 6) = (output772, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_771 (830, 6) = (output773, (830, 6)) := by
  rw [output773_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child772

theorem node774_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child773 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_771 (830, 6) = (output773, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_772 (830, 6) = (output774, (830, 6)) := by
  rw [output774_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child773

theorem node775_conditional
    (child774 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_772 (830, 6) = (output774, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_773 (830, 6) = (output775, (830, 6)) := by
  rw [output775_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child774

theorem node776_conditional
    (child769 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_767 (830, 6) = (output769, (830, 6)))
    (child775 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_773 (830, 6) = (output775, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_774 (830, 6) = (output776, (830, 6)) := by
  rw [output776_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child769 child775

theorem node777_conditional
    (child776 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_774 (830, 6) = (output776, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_775 (830, 6) = (output777, (830, 6)) := by
  rw [output777_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child776

theorem node778_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child777 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_775 (830, 6) = (output777, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_776 (830, 6) = (output778, (830, 6)) := by
  rw [output778_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child777

theorem node779_conditional
    (child778 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_776 (830, 6) = (output778, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_777 (830, 6) = (output779, (830, 6)) := by
  rw [output779_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child778

theorem node780_conditional
    (child767 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_765 (830, 2) = (output767, (830, 6)))
    (child779 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_777 (830, 6) = (output779, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_778 (830, 2) = (output780, (830, 6)) := by
  rw [output780_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child767 child779

theorem node781_conditional
    (child780 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_778 (830, 2) = (output780, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_779 (830, 2) = (output781, (830, 6)) := by
  rw [output781_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child780

theorem node782_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_780 (830, 6) = (output782, (830, 6)) := by
  rw [output782_def]
  kernel_rfl

theorem node783_conditional
    (child782 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_780 (830, 6) = (output782, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_781 (830, 6) = (output783, (830, 6)) := by
  rw [output783_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child782

theorem node784_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_782 (830, 6) = (output784, (830, 6)) := by
  rw [output784_def]
  kernel_rfl

theorem node785_conditional
    (child784 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_782 (830, 6) = (output784, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_783 (830, 6) = (output785, (830, 6)) := by
  rw [output785_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child784

theorem node786_conditional
    (child785 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_783 (830, 6) = (output785, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_784 (830, 6) = (output786, (830, 6)) := by
  rw [output786_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child785 child99

theorem node787_conditional
    (child786 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_784 (830, 6) = (output786, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_785 (830, 6) = (output787, (830, 6)) := by
  rw [output787_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child786

theorem node788_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child787 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_785 (830, 6) = (output787, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_786 (830, 6) = (output788, (830, 6)) := by
  rw [output788_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child787

theorem node789_conditional
    (child788 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_786 (830, 6) = (output788, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_787 (830, 6) = (output789, (830, 6)) := by
  rw [output789_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child788

theorem node790_conditional
    (child783 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_781 (830, 6) = (output783, (830, 6)))
    (child789 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_787 (830, 6) = (output789, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_788 (830, 6) = (output790, (830, 6)) := by
  rw [output790_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child783 child789

theorem node791_conditional
    (child790 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_788 (830, 6) = (output790, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_789 (830, 6) = (output791, (830, 6)) := by
  rw [output791_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child790

theorem node792_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child791 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_789 (830, 6) = (output791, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_790 (830, 6) = (output792, (830, 6)) := by
  rw [output792_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child791

theorem node793_conditional
    (child792 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_790 (830, 6) = (output792, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_791 (830, 6) = (output793, (830, 6)) := by
  rw [output793_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child792

theorem node794_conditional
    (child781 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_779 (830, 2) = (output781, (830, 6)))
    (child793 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_791 (830, 6) = (output793, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_792 (830, 2) = (output794, (830, 6)) := by
  rw [output794_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child781 child793

theorem node795_conditional
    (child794 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_792 (830, 2) = (output794, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_793 (830, 2) = (output795, (830, 6)) := by
  rw [output795_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child794

theorem node796_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_794 (830, 6) = (output796, (830, 6)) := by
  rw [output796_def]
  kernel_rfl

theorem node797_conditional
    (child796 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_794 (830, 6) = (output796, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_795 (830, 6) = (output797, (830, 6)) := by
  rw [output797_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child796

theorem node798_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_796 (830, 6) = (output798, (830, 6)) := by
  rw [output798_def]
  kernel_rfl

theorem node799_conditional
    (child798 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_796 (830, 6) = (output798, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_797 (830, 6) = (output799, (830, 6)) := by
  rw [output799_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child798

theorem node800_conditional
    (child799 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_797 (830, 6) = (output799, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_798 (830, 6) = (output800, (830, 6)) := by
  rw [output800_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child799 child99

theorem node801_conditional
    (child800 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_798 (830, 6) = (output800, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_799 (830, 6) = (output801, (830, 6)) := by
  rw [output801_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child800

theorem node802_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child801 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_799 (830, 6) = (output801, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_800 (830, 6) = (output802, (830, 6)) := by
  rw [output802_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child801

theorem node803_conditional
    (child802 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_800 (830, 6) = (output802, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_801 (830, 6) = (output803, (830, 6)) := by
  rw [output803_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child802

theorem node804_conditional
    (child797 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_795 (830, 6) = (output797, (830, 6)))
    (child803 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_801 (830, 6) = (output803, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_802 (830, 6) = (output804, (830, 6)) := by
  rw [output804_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child797 child803

theorem node805_conditional
    (child804 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_802 (830, 6) = (output804, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_803 (830, 6) = (output805, (830, 6)) := by
  rw [output805_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child804

theorem node806_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child805 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_803 (830, 6) = (output805, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_804 (830, 6) = (output806, (830, 6)) := by
  rw [output806_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child805

theorem node807_conditional
    (child806 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_804 (830, 6) = (output806, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_805 (830, 6) = (output807, (830, 6)) := by
  rw [output807_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child806

theorem node808_conditional
    (child795 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_793 (830, 2) = (output795, (830, 6)))
    (child807 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_805 (830, 6) = (output807, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_806 (830, 2) = (output808, (830, 6)) := by
  rw [output808_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child795 child807

theorem node809_conditional
    (child808 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_806 (830, 2) = (output808, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_807 (830, 2) = (output809, (830, 6)) := by
  rw [output809_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child808

theorem node810_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_808 (830, 6) = (output810, (830, 6)) := by
  rw [output810_def]
  kernel_rfl

theorem node811_conditional
    (child810 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_808 (830, 6) = (output810, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_809 (830, 6) = (output811, (830, 6)) := by
  rw [output811_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child810

theorem node812_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_810 (830, 6) = (output812, (830, 6)) := by
  rw [output812_def]
  kernel_rfl

theorem node813_conditional
    (child812 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_810 (830, 6) = (output812, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_811 (830, 6) = (output813, (830, 6)) := by
  rw [output813_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child812

theorem node814_conditional
    (child813 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_811 (830, 6) = (output813, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_812 (830, 6) = (output814, (830, 6)) := by
  rw [output814_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child813 child99

theorem node815_conditional
    (child814 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_812 (830, 6) = (output814, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_813 (830, 6) = (output815, (830, 6)) := by
  rw [output815_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child814

theorem node816_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child815 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_813 (830, 6) = (output815, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_814 (830, 6) = (output816, (830, 6)) := by
  rw [output816_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child815

theorem node817_conditional
    (child816 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_814 (830, 6) = (output816, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_815 (830, 6) = (output817, (830, 6)) := by
  rw [output817_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child816

theorem node818_conditional
    (child811 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_809 (830, 6) = (output811, (830, 6)))
    (child817 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_815 (830, 6) = (output817, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_816 (830, 6) = (output818, (830, 6)) := by
  rw [output818_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child811 child817

theorem node819_conditional
    (child818 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_816 (830, 6) = (output818, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_817 (830, 6) = (output819, (830, 6)) := by
  rw [output819_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child818

theorem node820_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child819 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_817 (830, 6) = (output819, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_818 (830, 6) = (output820, (830, 6)) := by
  rw [output820_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child819

theorem node821_conditional
    (child820 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_818 (830, 6) = (output820, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_819 (830, 6) = (output821, (830, 6)) := by
  rw [output821_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child820

theorem node822_conditional
    (child809 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_807 (830, 2) = (output809, (830, 6)))
    (child821 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_819 (830, 6) = (output821, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_820 (830, 2) = (output822, (830, 6)) := by
  rw [output822_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child809 child821

theorem node823_conditional
    (child822 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_820 (830, 2) = (output822, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_821 (830, 2) = (output823, (830, 6)) := by
  rw [output823_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child822

theorem node824_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_822 (830, 6) = (output824, (830, 6)) := by
  rw [output824_def]
  kernel_rfl

theorem node825_conditional
    (child824 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_822 (830, 6) = (output824, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_823 (830, 6) = (output825, (830, 6)) := by
  rw [output825_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child824

theorem node826_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_824 (830, 6) = (output826, (830, 6)) := by
  rw [output826_def]
  kernel_rfl

theorem node827_conditional
    (child826 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_824 (830, 6) = (output826, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_825 (830, 6) = (output827, (830, 6)) := by
  rw [output827_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child826

theorem node828_conditional
    (child827 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_825 (830, 6) = (output827, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_826 (830, 6) = (output828, (830, 6)) := by
  rw [output828_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child827 child99

theorem node829_conditional
    (child828 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_826 (830, 6) = (output828, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_827 (830, 6) = (output829, (830, 6)) := by
  rw [output829_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child828

theorem node830_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child829 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_827 (830, 6) = (output829, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_828 (830, 6) = (output830, (830, 6)) := by
  rw [output830_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child829

theorem node831_conditional
    (child830 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_828 (830, 6) = (output830, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_829 (830, 6) = (output831, (830, 6)) := by
  rw [output831_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child830

theorem node832_conditional
    (child825 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_823 (830, 6) = (output825, (830, 6)))
    (child831 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_829 (830, 6) = (output831, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_830 (830, 6) = (output832, (830, 6)) := by
  rw [output832_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child825 child831

theorem node833_conditional
    (child832 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_830 (830, 6) = (output832, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_831 (830, 6) = (output833, (830, 6)) := by
  rw [output833_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child832

theorem node834_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child833 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_831 (830, 6) = (output833, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_832 (830, 6) = (output834, (830, 6)) := by
  rw [output834_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child833

theorem node835_conditional
    (child834 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_832 (830, 6) = (output834, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_833 (830, 6) = (output835, (830, 6)) := by
  rw [output835_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child834

theorem node836_conditional
    (child823 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_821 (830, 2) = (output823, (830, 6)))
    (child835 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_833 (830, 6) = (output835, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_834 (830, 2) = (output836, (830, 6)) := by
  rw [output836_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child823 child835

theorem node837_conditional
    (child836 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_834 (830, 2) = (output836, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_835 (830, 2) = (output837, (830, 6)) := by
  rw [output837_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child836

theorem node838_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_836 (830, 6) = (output838, (830, 6)) := by
  rw [output838_def]
  kernel_rfl

theorem node839_conditional
    (child838 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_836 (830, 6) = (output838, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_837 (830, 6) = (output839, (830, 6)) := by
  rw [output839_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child838

theorem node840_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_838 (830, 6) = (output840, (830, 6)) := by
  rw [output840_def]
  kernel_rfl

theorem node841_conditional
    (child840 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_838 (830, 6) = (output840, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_839 (830, 6) = (output841, (830, 6)) := by
  rw [output841_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child840

theorem node842_conditional
    (child841 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_839 (830, 6) = (output841, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_840 (830, 6) = (output842, (830, 6)) := by
  rw [output842_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child841 child99

theorem node843_conditional
    (child842 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_840 (830, 6) = (output842, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_841 (830, 6) = (output843, (830, 6)) := by
  rw [output843_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child842

theorem node844_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child843 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_841 (830, 6) = (output843, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_842 (830, 6) = (output844, (830, 6)) := by
  rw [output844_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child843

theorem node845_conditional
    (child844 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_842 (830, 6) = (output844, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_843 (830, 6) = (output845, (830, 6)) := by
  rw [output845_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child844

theorem node846_conditional
    (child839 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_837 (830, 6) = (output839, (830, 6)))
    (child845 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_843 (830, 6) = (output845, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_844 (830, 6) = (output846, (830, 6)) := by
  rw [output846_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child839 child845

theorem node847_conditional
    (child846 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_844 (830, 6) = (output846, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_845 (830, 6) = (output847, (830, 6)) := by
  rw [output847_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child846

theorem node848_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child847 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_845 (830, 6) = (output847, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_846 (830, 6) = (output848, (830, 6)) := by
  rw [output848_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child847

theorem node849_conditional
    (child848 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_846 (830, 6) = (output848, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_847 (830, 6) = (output849, (830, 6)) := by
  rw [output849_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child848

theorem node850_conditional
    (child837 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_835 (830, 2) = (output837, (830, 6)))
    (child849 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_847 (830, 6) = (output849, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_848 (830, 2) = (output850, (830, 6)) := by
  rw [output850_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child837 child849

theorem node851_conditional
    (child850 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_848 (830, 2) = (output850, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_849 (830, 2) = (output851, (830, 6)) := by
  rw [output851_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child850

theorem node852_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_850 (830, 6) = (output852, (830, 6)) := by
  rw [output852_def]
  kernel_rfl

theorem node853_conditional
    (child852 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_850 (830, 6) = (output852, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_851 (830, 6) = (output853, (830, 6)) := by
  rw [output853_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child852

theorem node854_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_852 (830, 6) = (output854, (830, 6)) := by
  rw [output854_def]
  kernel_rfl

theorem node855_conditional
    (child854 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_852 (830, 6) = (output854, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_853 (830, 6) = (output855, (830, 6)) := by
  rw [output855_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child854

theorem node856_conditional
    (child855 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_853 (830, 6) = (output855, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_854 (830, 6) = (output856, (830, 6)) := by
  rw [output856_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child855 child99

theorem node857_conditional
    (child856 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_854 (830, 6) = (output856, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_855 (830, 6) = (output857, (830, 6)) := by
  rw [output857_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child856

theorem node858_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child857 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_855 (830, 6) = (output857, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_856 (830, 6) = (output858, (830, 6)) := by
  rw [output858_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child857

theorem node859_conditional
    (child858 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_856 (830, 6) = (output858, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_857 (830, 6) = (output859, (830, 6)) := by
  rw [output859_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child858

theorem node860_conditional
    (child853 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_851 (830, 6) = (output853, (830, 6)))
    (child859 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_857 (830, 6) = (output859, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_858 (830, 6) = (output860, (830, 6)) := by
  rw [output860_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child853 child859

theorem node861_conditional
    (child860 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_858 (830, 6) = (output860, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_859 (830, 6) = (output861, (830, 6)) := by
  rw [output861_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child860

theorem node862_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child861 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_859 (830, 6) = (output861, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_860 (830, 6) = (output862, (830, 6)) := by
  rw [output862_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child861

theorem node863_conditional
    (child862 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_860 (830, 6) = (output862, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_861 (830, 6) = (output863, (830, 6)) := by
  rw [output863_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child862

theorem node864_conditional
    (child851 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_849 (830, 2) = (output851, (830, 6)))
    (child863 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_861 (830, 6) = (output863, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_862 (830, 2) = (output864, (830, 6)) := by
  rw [output864_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child851 child863

theorem node865_conditional
    (child864 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_862 (830, 2) = (output864, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_863 (830, 2) = (output865, (830, 6)) := by
  rw [output865_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child864

theorem node866_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_864 (830, 6) = (output866, (830, 6)) := by
  rw [output866_def]
  kernel_rfl

theorem node867_conditional
    (child866 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_864 (830, 6) = (output866, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_865 (830, 6) = (output867, (830, 6)) := by
  rw [output867_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child866

theorem node868_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_866 (830, 6) = (output868, (830, 6)) := by
  rw [output868_def]
  kernel_rfl

theorem node869_conditional
    (child868 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_866 (830, 6) = (output868, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_867 (830, 6) = (output869, (830, 6)) := by
  rw [output869_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child868

theorem node870_conditional
    (child869 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_867 (830, 6) = (output869, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_868 (830, 6) = (output870, (830, 6)) := by
  rw [output870_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child869 child99

theorem node871_conditional
    (child870 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_868 (830, 6) = (output870, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_869 (830, 6) = (output871, (830, 6)) := by
  rw [output871_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child870

theorem node872_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child871 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_869 (830, 6) = (output871, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_870 (830, 6) = (output872, (830, 6)) := by
  rw [output872_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child871

theorem node873_conditional
    (child872 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_870 (830, 6) = (output872, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_871 (830, 6) = (output873, (830, 6)) := by
  rw [output873_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child872

theorem node874_conditional
    (child867 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_865 (830, 6) = (output867, (830, 6)))
    (child873 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_871 (830, 6) = (output873, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_872 (830, 6) = (output874, (830, 6)) := by
  rw [output874_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child867 child873

theorem node875_conditional
    (child874 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_872 (830, 6) = (output874, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_873 (830, 6) = (output875, (830, 6)) := by
  rw [output875_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child874

theorem node876_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child875 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_873 (830, 6) = (output875, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_874 (830, 6) = (output876, (830, 6)) := by
  rw [output876_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child875

theorem node877_conditional
    (child876 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_874 (830, 6) = (output876, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_875 (830, 6) = (output877, (830, 6)) := by
  rw [output877_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child876

theorem node878_conditional
    (child865 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_863 (830, 2) = (output865, (830, 6)))
    (child877 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_875 (830, 6) = (output877, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_876 (830, 2) = (output878, (830, 6)) := by
  rw [output878_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child865 child877

theorem node879_conditional
    (child878 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_876 (830, 2) = (output878, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_877 (830, 2) = (output879, (830, 6)) := by
  rw [output879_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child878

theorem node880_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_878 (830, 6) = (output880, (830, 6)) := by
  rw [output880_def]
  kernel_rfl

theorem node881_conditional
    (child880 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_878 (830, 6) = (output880, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_879 (830, 6) = (output881, (830, 6)) := by
  rw [output881_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child880

theorem node882_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_880 (830, 6) = (output882, (830, 6)) := by
  rw [output882_def]
  kernel_rfl

theorem node883_conditional
    (child882 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_880 (830, 6) = (output882, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_881 (830, 6) = (output883, (830, 6)) := by
  rw [output883_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child882

theorem node884_conditional
    (child883 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_881 (830, 6) = (output883, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_882 (830, 6) = (output884, (830, 6)) := by
  rw [output884_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child883 child99

theorem node885_conditional
    (child884 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_882 (830, 6) = (output884, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_883 (830, 6) = (output885, (830, 6)) := by
  rw [output885_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child884

theorem node886_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child885 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_883 (830, 6) = (output885, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_884 (830, 6) = (output886, (830, 6)) := by
  rw [output886_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child885

theorem node887_conditional
    (child886 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_884 (830, 6) = (output886, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_885 (830, 6) = (output887, (830, 6)) := by
  rw [output887_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child886

theorem node888_conditional
    (child881 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_879 (830, 6) = (output881, (830, 6)))
    (child887 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_885 (830, 6) = (output887, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_886 (830, 6) = (output888, (830, 6)) := by
  rw [output888_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child881 child887

theorem node889_conditional
    (child888 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_886 (830, 6) = (output888, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_887 (830, 6) = (output889, (830, 6)) := by
  rw [output889_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child888

theorem node890_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child889 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_887 (830, 6) = (output889, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_888 (830, 6) = (output890, (830, 6)) := by
  rw [output890_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child889

theorem node891_conditional
    (child890 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_888 (830, 6) = (output890, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_889 (830, 6) = (output891, (830, 6)) := by
  rw [output891_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child890

theorem node892_conditional
    (child879 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_877 (830, 2) = (output879, (830, 6)))
    (child891 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_889 (830, 6) = (output891, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_890 (830, 2) = (output892, (830, 6)) := by
  rw [output892_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child879 child891

theorem node893_conditional
    (child892 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_890 (830, 2) = (output892, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_891 (830, 2) = (output893, (830, 6)) := by
  rw [output893_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child892

theorem node894_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_892 (830, 6) = (output894, (830, 6)) := by
  rw [output894_def]
  kernel_rfl

theorem node895_conditional
    (child894 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_892 (830, 6) = (output894, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_893 (830, 6) = (output895, (830, 6)) := by
  rw [output895_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child894

theorem node896_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_894 (830, 6) = (output896, (830, 6)) := by
  rw [output896_def]
  kernel_rfl

theorem node897_conditional
    (child896 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_894 (830, 6) = (output896, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_895 (830, 6) = (output897, (830, 6)) := by
  rw [output897_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child896

theorem node898_conditional
    (child897 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_895 (830, 6) = (output897, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_896 (830, 6) = (output898, (830, 6)) := by
  rw [output898_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child897 child99

theorem node899_conditional
    (child898 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_896 (830, 6) = (output898, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_897 (830, 6) = (output899, (830, 6)) := by
  rw [output899_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child898

theorem node900_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child899 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_897 (830, 6) = (output899, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_898 (830, 6) = (output900, (830, 6)) := by
  rw [output900_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child899

theorem node901_conditional
    (child900 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_898 (830, 6) = (output900, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_899 (830, 6) = (output901, (830, 6)) := by
  rw [output901_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child900

theorem node902_conditional
    (child895 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_893 (830, 6) = (output895, (830, 6)))
    (child901 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_899 (830, 6) = (output901, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_900 (830, 6) = (output902, (830, 6)) := by
  rw [output902_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child895 child901

theorem node903_conditional
    (child902 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_900 (830, 6) = (output902, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_901 (830, 6) = (output903, (830, 6)) := by
  rw [output903_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child902

theorem node904_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child903 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_901 (830, 6) = (output903, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_902 (830, 6) = (output904, (830, 6)) := by
  rw [output904_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child903

theorem node905_conditional
    (child904 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_902 (830, 6) = (output904, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_903 (830, 6) = (output905, (830, 6)) := by
  rw [output905_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child904

theorem node906_conditional
    (child893 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_891 (830, 2) = (output893, (830, 6)))
    (child905 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_903 (830, 6) = (output905, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_904 (830, 2) = (output906, (830, 6)) := by
  rw [output906_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child893 child905

theorem node907_conditional
    (child906 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_904 (830, 2) = (output906, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_905 (830, 2) = (output907, (830, 6)) := by
  rw [output907_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child906

theorem node908_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_906 (830, 6) = (output908, (830, 6)) := by
  rw [output908_def]
  kernel_rfl

theorem node909_conditional
    (child908 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_906 (830, 6) = (output908, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_907 (830, 6) = (output909, (830, 6)) := by
  rw [output909_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child908

theorem node910_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_908 (830, 6) = (output910, (830, 6)) := by
  rw [output910_def]
  kernel_rfl

theorem node911_conditional
    (child910 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_908 (830, 6) = (output910, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_909 (830, 6) = (output911, (830, 6)) := by
  rw [output911_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child910

theorem node912_conditional
    (child911 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_909 (830, 6) = (output911, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_910 (830, 6) = (output912, (830, 6)) := by
  rw [output912_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child911 child99

theorem node913_conditional
    (child912 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_910 (830, 6) = (output912, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_911 (830, 6) = (output913, (830, 6)) := by
  rw [output913_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child912

theorem node914_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child913 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_911 (830, 6) = (output913, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_912 (830, 6) = (output914, (830, 6)) := by
  rw [output914_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child913

theorem node915_conditional
    (child914 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_912 (830, 6) = (output914, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_913 (830, 6) = (output915, (830, 6)) := by
  rw [output915_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child914

theorem node916_conditional
    (child909 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_907 (830, 6) = (output909, (830, 6)))
    (child915 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_913 (830, 6) = (output915, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_914 (830, 6) = (output916, (830, 6)) := by
  rw [output916_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child909 child915

theorem node917_conditional
    (child916 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_914 (830, 6) = (output916, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_915 (830, 6) = (output917, (830, 6)) := by
  rw [output917_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child916

theorem node918_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child917 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_915 (830, 6) = (output917, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_916 (830, 6) = (output918, (830, 6)) := by
  rw [output918_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child917

theorem node919_conditional
    (child918 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_916 (830, 6) = (output918, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_917 (830, 6) = (output919, (830, 6)) := by
  rw [output919_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child918

theorem node920_conditional
    (child907 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_905 (830, 2) = (output907, (830, 6)))
    (child919 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_917 (830, 6) = (output919, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_918 (830, 2) = (output920, (830, 6)) := by
  rw [output920_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child907 child919

theorem node921_conditional
    (child920 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_918 (830, 2) = (output920, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_919 (830, 2) = (output921, (830, 6)) := by
  rw [output921_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child920

theorem node922_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_920 (830, 6) = (output922, (830, 6)) := by
  rw [output922_def]
  kernel_rfl

theorem node923_conditional
    (child922 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_920 (830, 6) = (output922, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_921 (830, 6) = (output923, (830, 6)) := by
  rw [output923_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child922

theorem node924_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_922 (830, 6) = (output924, (830, 6)) := by
  rw [output924_def]
  kernel_rfl

theorem node925_conditional
    (child924 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_922 (830, 6) = (output924, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_923 (830, 6) = (output925, (830, 6)) := by
  rw [output925_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child924

theorem node926_conditional
    (child925 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_923 (830, 6) = (output925, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_924 (830, 6) = (output926, (830, 6)) := by
  rw [output926_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child925 child99

theorem node927_conditional
    (child926 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_924 (830, 6) = (output926, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_925 (830, 6) = (output927, (830, 6)) := by
  rw [output927_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child926

theorem node928_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child927 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_925 (830, 6) = (output927, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_926 (830, 6) = (output928, (830, 6)) := by
  rw [output928_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child927

theorem node929_conditional
    (child928 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_926 (830, 6) = (output928, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_927 (830, 6) = (output929, (830, 6)) := by
  rw [output929_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child928

theorem node930_conditional
    (child923 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_921 (830, 6) = (output923, (830, 6)))
    (child929 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_927 (830, 6) = (output929, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_928 (830, 6) = (output930, (830, 6)) := by
  rw [output930_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child923 child929

theorem node931_conditional
    (child930 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_928 (830, 6) = (output930, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_929 (830, 6) = (output931, (830, 6)) := by
  rw [output931_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child930

theorem node932_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child931 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_929 (830, 6) = (output931, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_930 (830, 6) = (output932, (830, 6)) := by
  rw [output932_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child931

theorem node933_conditional
    (child932 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_930 (830, 6) = (output932, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_931 (830, 6) = (output933, (830, 6)) := by
  rw [output933_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child932

theorem node934_conditional
    (child921 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_919 (830, 2) = (output921, (830, 6)))
    (child933 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_931 (830, 6) = (output933, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_932 (830, 2) = (output934, (830, 6)) := by
  rw [output934_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child921 child933

theorem node935_conditional
    (child934 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_932 (830, 2) = (output934, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_933 (830, 2) = (output935, (830, 6)) := by
  rw [output935_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child934

theorem node936_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_934 (830, 6) = (output936, (830, 6)) := by
  rw [output936_def]
  kernel_rfl

theorem node937_conditional
    (child936 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_934 (830, 6) = (output936, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_935 (830, 6) = (output937, (830, 6)) := by
  rw [output937_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child936

theorem node938_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_936 (830, 6) = (output938, (830, 6)) := by
  rw [output938_def]
  kernel_rfl

theorem node939_conditional
    (child938 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_936 (830, 6) = (output938, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_937 (830, 6) = (output939, (830, 6)) := by
  rw [output939_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child938

theorem node940_conditional
    (child939 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_937 (830, 6) = (output939, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_938 (830, 6) = (output940, (830, 6)) := by
  rw [output940_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child939 child99

theorem node941_conditional
    (child940 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_938 (830, 6) = (output940, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_939 (830, 6) = (output941, (830, 6)) := by
  rw [output941_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child940

theorem node942_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child941 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_939 (830, 6) = (output941, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_940 (830, 6) = (output942, (830, 6)) := by
  rw [output942_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child941

theorem node943_conditional
    (child942 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_940 (830, 6) = (output942, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_941 (830, 6) = (output943, (830, 6)) := by
  rw [output943_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child942

theorem node944_conditional
    (child937 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_935 (830, 6) = (output937, (830, 6)))
    (child943 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_941 (830, 6) = (output943, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_942 (830, 6) = (output944, (830, 6)) := by
  rw [output944_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child937 child943

theorem node945_conditional
    (child944 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_942 (830, 6) = (output944, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_943 (830, 6) = (output945, (830, 6)) := by
  rw [output945_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child944

theorem node946_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child945 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_943 (830, 6) = (output945, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_944 (830, 6) = (output946, (830, 6)) := by
  rw [output946_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child945

theorem node947_conditional
    (child946 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_944 (830, 6) = (output946, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_945 (830, 6) = (output947, (830, 6)) := by
  rw [output947_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child946

theorem node948_conditional
    (child935 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_933 (830, 2) = (output935, (830, 6)))
    (child947 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_945 (830, 6) = (output947, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_946 (830, 2) = (output948, (830, 6)) := by
  rw [output948_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child935 child947

theorem node949_conditional
    (child948 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_946 (830, 2) = (output948, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_947 (830, 2) = (output949, (830, 6)) := by
  rw [output949_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child948

theorem node950_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_948 (830, 6) = (output950, (830, 6)) := by
  rw [output950_def]
  kernel_rfl

theorem node951_conditional
    (child950 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_948 (830, 6) = (output950, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_949 (830, 6) = (output951, (830, 6)) := by
  rw [output951_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child950

theorem node952_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_950 (830, 6) = (output952, (830, 6)) := by
  rw [output952_def]
  kernel_rfl

theorem node953_conditional
    (child952 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_950 (830, 6) = (output952, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_951 (830, 6) = (output953, (830, 6)) := by
  rw [output953_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child952

theorem node954_conditional
    (child953 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_951 (830, 6) = (output953, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_952 (830, 6) = (output954, (830, 6)) := by
  rw [output954_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child953 child99

theorem node955_conditional
    (child954 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_952 (830, 6) = (output954, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_953 (830, 6) = (output955, (830, 6)) := by
  rw [output955_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child954

theorem node956_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child955 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_953 (830, 6) = (output955, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_954 (830, 6) = (output956, (830, 6)) := by
  rw [output956_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child955

theorem node957_conditional
    (child956 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_954 (830, 6) = (output956, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_955 (830, 6) = (output957, (830, 6)) := by
  rw [output957_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child956

theorem node958_conditional
    (child951 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_949 (830, 6) = (output951, (830, 6)))
    (child957 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_955 (830, 6) = (output957, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_956 (830, 6) = (output958, (830, 6)) := by
  rw [output958_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child951 child957

theorem node959_conditional
    (child958 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_956 (830, 6) = (output958, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_957 (830, 6) = (output959, (830, 6)) := by
  rw [output959_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child958

theorem node960_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child959 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_957 (830, 6) = (output959, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_958 (830, 6) = (output960, (830, 6)) := by
  rw [output960_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child959

theorem node961_conditional
    (child960 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_958 (830, 6) = (output960, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_959 (830, 6) = (output961, (830, 6)) := by
  rw [output961_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child960

theorem node962_conditional
    (child949 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_947 (830, 2) = (output949, (830, 6)))
    (child961 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_959 (830, 6) = (output961, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_960 (830, 2) = (output962, (830, 6)) := by
  rw [output962_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child949 child961

theorem node963_conditional
    (child962 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_960 (830, 2) = (output962, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_961 (830, 2) = (output963, (830, 6)) := by
  rw [output963_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child962

theorem node964_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_962 (830, 6) = (output964, (830, 6)) := by
  rw [output964_def]
  kernel_rfl

theorem node965_conditional
    (child964 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_962 (830, 6) = (output964, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_963 (830, 6) = (output965, (830, 6)) := by
  rw [output965_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child964

theorem node966_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_964 (830, 6) = (output966, (830, 6)) := by
  rw [output966_def]
  kernel_rfl

theorem node967_conditional
    (child966 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_964 (830, 6) = (output966, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_965 (830, 6) = (output967, (830, 6)) := by
  rw [output967_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child966

theorem node968_conditional
    (child967 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_965 (830, 6) = (output967, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_966 (830, 6) = (output968, (830, 6)) := by
  rw [output968_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child967 child99

theorem node969_conditional
    (child968 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_966 (830, 6) = (output968, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_967 (830, 6) = (output969, (830, 6)) := by
  rw [output969_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child968

theorem node970_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child969 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_967 (830, 6) = (output969, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_968 (830, 6) = (output970, (830, 6)) := by
  rw [output970_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child969

theorem node971_conditional
    (child970 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_968 (830, 6) = (output970, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_969 (830, 6) = (output971, (830, 6)) := by
  rw [output971_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child970

theorem node972_conditional
    (child965 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_963 (830, 6) = (output965, (830, 6)))
    (child971 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_969 (830, 6) = (output971, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_970 (830, 6) = (output972, (830, 6)) := by
  rw [output972_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child965 child971

theorem node973_conditional
    (child972 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_970 (830, 6) = (output972, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_971 (830, 6) = (output973, (830, 6)) := by
  rw [output973_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child972

theorem node974_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child973 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_971 (830, 6) = (output973, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_972 (830, 6) = (output974, (830, 6)) := by
  rw [output974_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child973

theorem node975_conditional
    (child974 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_972 (830, 6) = (output974, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_973 (830, 6) = (output975, (830, 6)) := by
  rw [output975_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child974

theorem node976_conditional
    (child963 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_961 (830, 2) = (output963, (830, 6)))
    (child975 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_973 (830, 6) = (output975, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_974 (830, 2) = (output976, (830, 6)) := by
  rw [output976_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child963 child975

theorem node977_conditional
    (child976 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_974 (830, 2) = (output976, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_975 (830, 2) = (output977, (830, 6)) := by
  rw [output977_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child976

theorem node978_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_976 (830, 6) = (output978, (830, 6)) := by
  rw [output978_def]
  kernel_rfl

theorem node979_conditional
    (child978 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_976 (830, 6) = (output978, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_977 (830, 6) = (output979, (830, 6)) := by
  rw [output979_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child978

theorem node980_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_978 (830, 6) = (output980, (830, 6)) := by
  rw [output980_def]
  kernel_rfl

theorem node981_conditional
    (child980 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_978 (830, 6) = (output980, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_979 (830, 6) = (output981, (830, 6)) := by
  rw [output981_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child980

theorem node982_conditional
    (child981 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_979 (830, 6) = (output981, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_980 (830, 6) = (output982, (830, 6)) := by
  rw [output982_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child981 child99

theorem node983_conditional
    (child982 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_980 (830, 6) = (output982, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_981 (830, 6) = (output983, (830, 6)) := by
  rw [output983_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child982

theorem node984_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child983 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_981 (830, 6) = (output983, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_982 (830, 6) = (output984, (830, 6)) := by
  rw [output984_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child983

theorem node985_conditional
    (child984 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_982 (830, 6) = (output984, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_983 (830, 6) = (output985, (830, 6)) := by
  rw [output985_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child984

theorem node986_conditional
    (child979 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_977 (830, 6) = (output979, (830, 6)))
    (child985 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_983 (830, 6) = (output985, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_984 (830, 6) = (output986, (830, 6)) := by
  rw [output986_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child979 child985

theorem node987_conditional
    (child986 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_984 (830, 6) = (output986, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_985 (830, 6) = (output987, (830, 6)) := by
  rw [output987_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child986

theorem node988_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child987 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_985 (830, 6) = (output987, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_986 (830, 6) = (output988, (830, 6)) := by
  rw [output988_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child987

theorem node989_conditional
    (child988 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_986 (830, 6) = (output988, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_987 (830, 6) = (output989, (830, 6)) := by
  rw [output989_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child988

theorem node990_conditional
    (child977 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_975 (830, 2) = (output977, (830, 6)))
    (child989 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_987 (830, 6) = (output989, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_988 (830, 2) = (output990, (830, 6)) := by
  rw [output990_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child977 child989

theorem node991_conditional
    (child990 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_988 (830, 2) = (output990, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_989 (830, 2) = (output991, (830, 6)) := by
  rw [output991_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child990

theorem node992_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_990 (830, 6) = (output992, (830, 6)) := by
  rw [output992_def]
  kernel_rfl

theorem node993_conditional
    (child992 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_990 (830, 6) = (output992, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_991 (830, 6) = (output993, (830, 6)) := by
  rw [output993_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child992

theorem node994_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_992 (830, 6) = (output994, (830, 6)) := by
  rw [output994_def]
  kernel_rfl

theorem node995_conditional
    (child994 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_992 (830, 6) = (output994, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_993 (830, 6) = (output995, (830, 6)) := by
  rw [output995_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child994

theorem node996_conditional
    (child995 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_993 (830, 6) = (output995, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_994 (830, 6) = (output996, (830, 6)) := by
  rw [output996_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child995 child99

theorem node997_conditional
    (child996 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_994 (830, 6) = (output996, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_995 (830, 6) = (output997, (830, 6)) := by
  rw [output997_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child996

theorem node998_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child997 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_995 (830, 6) = (output997, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_996 (830, 6) = (output998, (830, 6)) := by
  rw [output998_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child997

theorem node999_conditional
    (child998 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_996 (830, 6) = (output998, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_997 (830, 6) = (output999, (830, 6)) := by
  rw [output999_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child998

theorem node1000_conditional
    (child993 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_991 (830, 6) = (output993, (830, 6)))
    (child999 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_997 (830, 6) = (output999, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_998 (830, 6) = (output1000, (830, 6)) := by
  rw [output1000_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child993 child999

theorem node1001_conditional
    (child1000 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_998 (830, 6) = (output1000, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_999 (830, 6) = (output1001, (830, 6)) := by
  rw [output1001_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1000

theorem node1002_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1001 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_999 (830, 6) = (output1001, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1000 (830, 6) = (output1002, (830, 6)) := by
  rw [output1002_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1001

theorem node1003_conditional
    (child1002 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1000 (830, 6) = (output1002, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1001 (830, 6) = (output1003, (830, 6)) := by
  rw [output1003_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1002

theorem node1004_conditional
    (child991 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_989 (830, 2) = (output991, (830, 6)))
    (child1003 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1001 (830, 6) = (output1003, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1002 (830, 2) = (output1004, (830, 6)) := by
  rw [output1004_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child991 child1003

theorem node1005_conditional
    (child1004 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1002 (830, 2) = (output1004, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1003 (830, 2) = (output1005, (830, 6)) := by
  rw [output1005_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1004

theorem node1006_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1004 (830, 6) = (output1006, (830, 6)) := by
  rw [output1006_def]
  kernel_rfl

theorem node1007_conditional
    (child1006 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1004 (830, 6) = (output1006, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1005 (830, 6) = (output1007, (830, 6)) := by
  rw [output1007_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1006

theorem node1008_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1006 (830, 6) = (output1008, (830, 6)) := by
  rw [output1008_def]
  kernel_rfl

theorem node1009_conditional
    (child1008 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1006 (830, 6) = (output1008, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1007 (830, 6) = (output1009, (830, 6)) := by
  rw [output1009_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1008

theorem node1010_conditional
    (child1009 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1007 (830, 6) = (output1009, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1008 (830, 6) = (output1010, (830, 6)) := by
  rw [output1010_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1009 child99

theorem node1011_conditional
    (child1010 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1008 (830, 6) = (output1010, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1009 (830, 6) = (output1011, (830, 6)) := by
  rw [output1011_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1010

theorem node1012_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1011 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1009 (830, 6) = (output1011, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1010 (830, 6) = (output1012, (830, 6)) := by
  rw [output1012_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1011

theorem node1013_conditional
    (child1012 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1010 (830, 6) = (output1012, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1011 (830, 6) = (output1013, (830, 6)) := by
  rw [output1013_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1012

theorem node1014_conditional
    (child1007 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1005 (830, 6) = (output1007, (830, 6)))
    (child1013 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1011 (830, 6) = (output1013, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1012 (830, 6) = (output1014, (830, 6)) := by
  rw [output1014_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1007 child1013

theorem node1015_conditional
    (child1014 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1012 (830, 6) = (output1014, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1013 (830, 6) = (output1015, (830, 6)) := by
  rw [output1015_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1014

theorem node1016_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1015 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1013 (830, 6) = (output1015, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1014 (830, 6) = (output1016, (830, 6)) := by
  rw [output1016_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1015

theorem node1017_conditional
    (child1016 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1014 (830, 6) = (output1016, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1015 (830, 6) = (output1017, (830, 6)) := by
  rw [output1017_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1016

theorem node1018_conditional
    (child1005 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1003 (830, 2) = (output1005, (830, 6)))
    (child1017 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1015 (830, 6) = (output1017, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1016 (830, 2) = (output1018, (830, 6)) := by
  rw [output1018_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1005 child1017

theorem node1019_conditional
    (child1018 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1016 (830, 2) = (output1018, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1017 (830, 2) = (output1019, (830, 6)) := by
  rw [output1019_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1018

theorem node1020_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1018 (830, 6) = (output1020, (830, 6)) := by
  rw [output1020_def]
  kernel_rfl

theorem node1021_conditional
    (child1020 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1018 (830, 6) = (output1020, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1019 (830, 6) = (output1021, (830, 6)) := by
  rw [output1021_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1020

theorem node1022_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1020 (830, 6) = (output1022, (830, 6)) := by
  rw [output1022_def]
  kernel_rfl

theorem node1023_conditional
    (child1022 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1020 (830, 6) = (output1022, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1021 (830, 6) = (output1023, (830, 6)) := by
  rw [output1023_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1022

theorem node1024_conditional
    (child1023 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1021 (830, 6) = (output1023, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1022 (830, 6) = (output1024, (830, 6)) := by
  rw [output1024_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1023 child99

theorem node1025_conditional
    (child1024 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1022 (830, 6) = (output1024, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1023 (830, 6) = (output1025, (830, 6)) := by
  rw [output1025_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1024

theorem node1026_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1025 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1023 (830, 6) = (output1025, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1024 (830, 6) = (output1026, (830, 6)) := by
  rw [output1026_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1025

theorem node1027_conditional
    (child1026 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1024 (830, 6) = (output1026, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1025 (830, 6) = (output1027, (830, 6)) := by
  rw [output1027_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1026

theorem node1028_conditional
    (child1021 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1019 (830, 6) = (output1021, (830, 6)))
    (child1027 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1025 (830, 6) = (output1027, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1026 (830, 6) = (output1028, (830, 6)) := by
  rw [output1028_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1021 child1027

theorem node1029_conditional
    (child1028 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1026 (830, 6) = (output1028, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1027 (830, 6) = (output1029, (830, 6)) := by
  rw [output1029_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1028

theorem node1030_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1029 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1027 (830, 6) = (output1029, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1028 (830, 6) = (output1030, (830, 6)) := by
  rw [output1030_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1029

theorem node1031_conditional
    (child1030 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1028 (830, 6) = (output1030, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1029 (830, 6) = (output1031, (830, 6)) := by
  rw [output1031_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1030

theorem node1032_conditional
    (child1019 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1017 (830, 2) = (output1019, (830, 6)))
    (child1031 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1029 (830, 6) = (output1031, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1030 (830, 2) = (output1032, (830, 6)) := by
  rw [output1032_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1019 child1031

theorem node1033_conditional
    (child1032 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1030 (830, 2) = (output1032, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1031 (830, 2) = (output1033, (830, 6)) := by
  rw [output1033_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1032

theorem node1034_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1032 (830, 6) = (output1034, (830, 6)) := by
  rw [output1034_def]
  kernel_rfl

theorem node1035_conditional
    (child1034 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1032 (830, 6) = (output1034, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1033 (830, 6) = (output1035, (830, 6)) := by
  rw [output1035_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1034

theorem node1036_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1034 (830, 6) = (output1036, (830, 6)) := by
  rw [output1036_def]
  kernel_rfl

theorem node1037_conditional
    (child1036 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1034 (830, 6) = (output1036, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1035 (830, 6) = (output1037, (830, 6)) := by
  rw [output1037_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1036

theorem node1038_conditional
    (child1037 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1035 (830, 6) = (output1037, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1036 (830, 6) = (output1038, (830, 6)) := by
  rw [output1038_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1037 child99

theorem node1039_conditional
    (child1038 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1036 (830, 6) = (output1038, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1037 (830, 6) = (output1039, (830, 6)) := by
  rw [output1039_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1038

theorem node1040_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1039 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1037 (830, 6) = (output1039, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1038 (830, 6) = (output1040, (830, 6)) := by
  rw [output1040_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1039

theorem node1041_conditional
    (child1040 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1038 (830, 6) = (output1040, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1039 (830, 6) = (output1041, (830, 6)) := by
  rw [output1041_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1040

theorem node1042_conditional
    (child1035 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1033 (830, 6) = (output1035, (830, 6)))
    (child1041 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1039 (830, 6) = (output1041, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1040 (830, 6) = (output1042, (830, 6)) := by
  rw [output1042_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1035 child1041

theorem node1043_conditional
    (child1042 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1040 (830, 6) = (output1042, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1041 (830, 6) = (output1043, (830, 6)) := by
  rw [output1043_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1042

theorem node1044_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1043 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1041 (830, 6) = (output1043, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1042 (830, 6) = (output1044, (830, 6)) := by
  rw [output1044_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1043

theorem node1045_conditional
    (child1044 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1042 (830, 6) = (output1044, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1043 (830, 6) = (output1045, (830, 6)) := by
  rw [output1045_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1044

theorem node1046_conditional
    (child1033 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1031 (830, 2) = (output1033, (830, 6)))
    (child1045 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1043 (830, 6) = (output1045, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1044 (830, 2) = (output1046, (830, 6)) := by
  rw [output1046_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1033 child1045

theorem node1047_conditional
    (child1046 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1044 (830, 2) = (output1046, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1045 (830, 2) = (output1047, (830, 6)) := by
  rw [output1047_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1046

theorem node1048_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1046 (830, 6) = (output1048, (830, 6)) := by
  rw [output1048_def]
  kernel_rfl

theorem node1049_conditional
    (child1048 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1046 (830, 6) = (output1048, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1047 (830, 6) = (output1049, (830, 6)) := by
  rw [output1049_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1048

theorem node1050_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1048 (830, 6) = (output1050, (830, 6)) := by
  rw [output1050_def]
  kernel_rfl

theorem node1051_conditional
    (child1050 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1048 (830, 6) = (output1050, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1049 (830, 6) = (output1051, (830, 6)) := by
  rw [output1051_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1050

theorem node1052_conditional
    (child1051 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1049 (830, 6) = (output1051, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1050 (830, 6) = (output1052, (830, 6)) := by
  rw [output1052_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1051 child99

theorem node1053_conditional
    (child1052 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1050 (830, 6) = (output1052, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1051 (830, 6) = (output1053, (830, 6)) := by
  rw [output1053_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1052

theorem node1054_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1053 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1051 (830, 6) = (output1053, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1052 (830, 6) = (output1054, (830, 6)) := by
  rw [output1054_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1053

theorem node1055_conditional
    (child1054 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1052 (830, 6) = (output1054, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1053 (830, 6) = (output1055, (830, 6)) := by
  rw [output1055_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1054

theorem node1056_conditional
    (child1049 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1047 (830, 6) = (output1049, (830, 6)))
    (child1055 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1053 (830, 6) = (output1055, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1054 (830, 6) = (output1056, (830, 6)) := by
  rw [output1056_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1049 child1055

theorem node1057_conditional
    (child1056 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1054 (830, 6) = (output1056, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1055 (830, 6) = (output1057, (830, 6)) := by
  rw [output1057_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1056

theorem node1058_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1057 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1055 (830, 6) = (output1057, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1056 (830, 6) = (output1058, (830, 6)) := by
  rw [output1058_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1057

theorem node1059_conditional
    (child1058 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1056 (830, 6) = (output1058, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1057 (830, 6) = (output1059, (830, 6)) := by
  rw [output1059_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1058

theorem node1060_conditional
    (child1047 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1045 (830, 2) = (output1047, (830, 6)))
    (child1059 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1057 (830, 6) = (output1059, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1058 (830, 2) = (output1060, (830, 6)) := by
  rw [output1060_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1047 child1059

theorem node1061_conditional
    (child1060 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1058 (830, 2) = (output1060, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1059 (830, 2) = (output1061, (830, 6)) := by
  rw [output1061_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1060

theorem node1062_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1060 (830, 6) = (output1062, (830, 6)) := by
  rw [output1062_def]
  kernel_rfl

theorem node1063_conditional
    (child1062 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1060 (830, 6) = (output1062, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1061 (830, 6) = (output1063, (830, 6)) := by
  rw [output1063_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1062

theorem node1064_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1062 (830, 6) = (output1064, (830, 6)) := by
  rw [output1064_def]
  kernel_rfl

theorem node1065_conditional
    (child1064 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1062 (830, 6) = (output1064, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1063 (830, 6) = (output1065, (830, 6)) := by
  rw [output1065_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1064

theorem node1066_conditional
    (child1065 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1063 (830, 6) = (output1065, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1064 (830, 6) = (output1066, (830, 6)) := by
  rw [output1066_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1065 child99

theorem node1067_conditional
    (child1066 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1064 (830, 6) = (output1066, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1065 (830, 6) = (output1067, (830, 6)) := by
  rw [output1067_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1066

theorem node1068_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1067 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1065 (830, 6) = (output1067, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1066 (830, 6) = (output1068, (830, 6)) := by
  rw [output1068_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1067

theorem node1069_conditional
    (child1068 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1066 (830, 6) = (output1068, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1067 (830, 6) = (output1069, (830, 6)) := by
  rw [output1069_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1068

theorem node1070_conditional
    (child1063 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1061 (830, 6) = (output1063, (830, 6)))
    (child1069 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1067 (830, 6) = (output1069, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1068 (830, 6) = (output1070, (830, 6)) := by
  rw [output1070_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1063 child1069

theorem node1071_conditional
    (child1070 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1068 (830, 6) = (output1070, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1069 (830, 6) = (output1071, (830, 6)) := by
  rw [output1071_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1070

theorem node1072_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1071 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1069 (830, 6) = (output1071, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1070 (830, 6) = (output1072, (830, 6)) := by
  rw [output1072_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1071

theorem node1073_conditional
    (child1072 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1070 (830, 6) = (output1072, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1071 (830, 6) = (output1073, (830, 6)) := by
  rw [output1073_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1072

theorem node1074_conditional
    (child1061 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1059 (830, 2) = (output1061, (830, 6)))
    (child1073 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1071 (830, 6) = (output1073, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1072 (830, 2) = (output1074, (830, 6)) := by
  rw [output1074_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1061 child1073

theorem node1075_conditional
    (child1074 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1072 (830, 2) = (output1074, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1073 (830, 2) = (output1075, (830, 6)) := by
  rw [output1075_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1074

theorem node1076_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1074 (830, 6) = (output1076, (830, 6)) := by
  rw [output1076_def]
  kernel_rfl

theorem node1077_conditional
    (child1076 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1074 (830, 6) = (output1076, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1075 (830, 6) = (output1077, (830, 6)) := by
  rw [output1077_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1076

theorem node1078_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1076 (830, 6) = (output1078, (830, 6)) := by
  rw [output1078_def]
  kernel_rfl

theorem node1079_conditional
    (child1078 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1076 (830, 6) = (output1078, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1077 (830, 6) = (output1079, (830, 6)) := by
  rw [output1079_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1078

theorem node1080_conditional
    (child1079 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1077 (830, 6) = (output1079, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1078 (830, 6) = (output1080, (830, 6)) := by
  rw [output1080_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1079 child99

theorem node1081_conditional
    (child1080 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1078 (830, 6) = (output1080, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1079 (830, 6) = (output1081, (830, 6)) := by
  rw [output1081_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1080

theorem node1082_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1081 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1079 (830, 6) = (output1081, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1080 (830, 6) = (output1082, (830, 6)) := by
  rw [output1082_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1081

theorem node1083_conditional
    (child1082 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1080 (830, 6) = (output1082, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1081 (830, 6) = (output1083, (830, 6)) := by
  rw [output1083_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1082

theorem node1084_conditional
    (child1077 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1075 (830, 6) = (output1077, (830, 6)))
    (child1083 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1081 (830, 6) = (output1083, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1082 (830, 6) = (output1084, (830, 6)) := by
  rw [output1084_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1077 child1083

theorem node1085_conditional
    (child1084 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1082 (830, 6) = (output1084, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1083 (830, 6) = (output1085, (830, 6)) := by
  rw [output1085_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1084

theorem node1086_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1085 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1083 (830, 6) = (output1085, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1084 (830, 6) = (output1086, (830, 6)) := by
  rw [output1086_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1085

theorem node1087_conditional
    (child1086 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1084 (830, 6) = (output1086, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1085 (830, 6) = (output1087, (830, 6)) := by
  rw [output1087_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1086

theorem node1088_conditional
    (child1075 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1073 (830, 2) = (output1075, (830, 6)))
    (child1087 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1085 (830, 6) = (output1087, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1086 (830, 2) = (output1088, (830, 6)) := by
  rw [output1088_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1075 child1087

theorem node1089_conditional
    (child1088 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1086 (830, 2) = (output1088, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1087 (830, 2) = (output1089, (830, 6)) := by
  rw [output1089_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1088

theorem node1090_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1088 (830, 6) = (output1090, (830, 6)) := by
  rw [output1090_def]
  kernel_rfl

theorem node1091_conditional
    (child1090 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1088 (830, 6) = (output1090, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1089 (830, 6) = (output1091, (830, 6)) := by
  rw [output1091_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1090

theorem node1092_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1090 (830, 6) = (output1092, (830, 6)) := by
  rw [output1092_def]
  kernel_rfl

theorem node1093_conditional
    (child1092 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1090 (830, 6) = (output1092, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1091 (830, 6) = (output1093, (830, 6)) := by
  rw [output1093_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1092

theorem node1094_conditional
    (child1093 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1091 (830, 6) = (output1093, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1092 (830, 6) = (output1094, (830, 6)) := by
  rw [output1094_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1093 child99

theorem node1095_conditional
    (child1094 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1092 (830, 6) = (output1094, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1093 (830, 6) = (output1095, (830, 6)) := by
  rw [output1095_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1094

theorem node1096_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1095 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1093 (830, 6) = (output1095, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1094 (830, 6) = (output1096, (830, 6)) := by
  rw [output1096_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1095

theorem node1097_conditional
    (child1096 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1094 (830, 6) = (output1096, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1095 (830, 6) = (output1097, (830, 6)) := by
  rw [output1097_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1096

theorem node1098_conditional
    (child1091 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1089 (830, 6) = (output1091, (830, 6)))
    (child1097 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1095 (830, 6) = (output1097, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1096 (830, 6) = (output1098, (830, 6)) := by
  rw [output1098_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1091 child1097

theorem node1099_conditional
    (child1098 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1096 (830, 6) = (output1098, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1097 (830, 6) = (output1099, (830, 6)) := by
  rw [output1099_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1098

theorem node1100_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1099 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1097 (830, 6) = (output1099, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1098 (830, 6) = (output1100, (830, 6)) := by
  rw [output1100_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1099

theorem node1101_conditional
    (child1100 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1098 (830, 6) = (output1100, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1099 (830, 6) = (output1101, (830, 6)) := by
  rw [output1101_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1100

theorem node1102_conditional
    (child1089 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1087 (830, 2) = (output1089, (830, 6)))
    (child1101 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1099 (830, 6) = (output1101, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1100 (830, 2) = (output1102, (830, 6)) := by
  rw [output1102_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1089 child1101

theorem node1103_conditional
    (child1102 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1100 (830, 2) = (output1102, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1101 (830, 2) = (output1103, (830, 6)) := by
  rw [output1103_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1102

theorem node1104_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1102 (830, 6) = (output1104, (830, 6)) := by
  rw [output1104_def]
  kernel_rfl

theorem node1105_conditional
    (child1104 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1102 (830, 6) = (output1104, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1103 (830, 6) = (output1105, (830, 6)) := by
  rw [output1105_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1104

theorem node1106_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1104 (830, 6) = (output1106, (830, 6)) := by
  rw [output1106_def]
  kernel_rfl

theorem node1107_conditional
    (child1106 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1104 (830, 6) = (output1106, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1105 (830, 6) = (output1107, (830, 6)) := by
  rw [output1107_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1106

theorem node1108_conditional
    (child1107 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1105 (830, 6) = (output1107, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1106 (830, 6) = (output1108, (830, 6)) := by
  rw [output1108_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1107 child99

theorem node1109_conditional
    (child1108 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1106 (830, 6) = (output1108, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1107 (830, 6) = (output1109, (830, 6)) := by
  rw [output1109_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1108

theorem node1110_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1109 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1107 (830, 6) = (output1109, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1108 (830, 6) = (output1110, (830, 6)) := by
  rw [output1110_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1109

theorem node1111_conditional
    (child1110 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1108 (830, 6) = (output1110, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1109 (830, 6) = (output1111, (830, 6)) := by
  rw [output1111_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1110

theorem node1112_conditional
    (child1105 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1103 (830, 6) = (output1105, (830, 6)))
    (child1111 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1109 (830, 6) = (output1111, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1110 (830, 6) = (output1112, (830, 6)) := by
  rw [output1112_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1105 child1111

theorem node1113_conditional
    (child1112 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1110 (830, 6) = (output1112, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1111 (830, 6) = (output1113, (830, 6)) := by
  rw [output1113_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1112

theorem node1114_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1113 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1111 (830, 6) = (output1113, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1112 (830, 6) = (output1114, (830, 6)) := by
  rw [output1114_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1113

theorem node1115_conditional
    (child1114 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1112 (830, 6) = (output1114, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1113 (830, 6) = (output1115, (830, 6)) := by
  rw [output1115_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1114

theorem node1116_conditional
    (child1103 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1101 (830, 2) = (output1103, (830, 6)))
    (child1115 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1113 (830, 6) = (output1115, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1114 (830, 2) = (output1116, (830, 6)) := by
  rw [output1116_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1103 child1115

theorem node1117_conditional
    (child1116 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1114 (830, 2) = (output1116, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1115 (830, 2) = (output1117, (830, 6)) := by
  rw [output1117_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1116

theorem node1118_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1116 (830, 6) = (output1118, (830, 6)) := by
  rw [output1118_def]
  kernel_rfl

theorem node1119_conditional
    (child1118 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1116 (830, 6) = (output1118, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1117 (830, 6) = (output1119, (830, 6)) := by
  rw [output1119_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1118

theorem node1120_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1118 (830, 6) = (output1120, (830, 6)) := by
  rw [output1120_def]
  kernel_rfl

theorem node1121_conditional
    (child1120 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1118 (830, 6) = (output1120, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1119 (830, 6) = (output1121, (830, 6)) := by
  rw [output1121_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1120

theorem node1122_conditional
    (child1121 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1119 (830, 6) = (output1121, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1120 (830, 6) = (output1122, (830, 6)) := by
  rw [output1122_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1121 child99

theorem node1123_conditional
    (child1122 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1120 (830, 6) = (output1122, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1121 (830, 6) = (output1123, (830, 6)) := by
  rw [output1123_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1122

theorem node1124_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1123 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1121 (830, 6) = (output1123, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1122 (830, 6) = (output1124, (830, 6)) := by
  rw [output1124_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1123

theorem node1125_conditional
    (child1124 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1122 (830, 6) = (output1124, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1123 (830, 6) = (output1125, (830, 6)) := by
  rw [output1125_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1124

theorem node1126_conditional
    (child1119 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1117 (830, 6) = (output1119, (830, 6)))
    (child1125 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1123 (830, 6) = (output1125, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1124 (830, 6) = (output1126, (830, 6)) := by
  rw [output1126_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1119 child1125

theorem node1127_conditional
    (child1126 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1124 (830, 6) = (output1126, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1125 (830, 6) = (output1127, (830, 6)) := by
  rw [output1127_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1126

theorem node1128_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1127 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1125 (830, 6) = (output1127, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1126 (830, 6) = (output1128, (830, 6)) := by
  rw [output1128_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1127

theorem node1129_conditional
    (child1128 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1126 (830, 6) = (output1128, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1127 (830, 6) = (output1129, (830, 6)) := by
  rw [output1129_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1128

theorem node1130_conditional
    (child1117 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1115 (830, 2) = (output1117, (830, 6)))
    (child1129 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1127 (830, 6) = (output1129, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1128 (830, 2) = (output1130, (830, 6)) := by
  rw [output1130_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1117 child1129

theorem node1131_conditional
    (child1130 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1128 (830, 2) = (output1130, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1129 (830, 2) = (output1131, (830, 6)) := by
  rw [output1131_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1130

theorem node1132_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1130 (830, 6) = (output1132, (830, 6)) := by
  rw [output1132_def]
  kernel_rfl

theorem node1133_conditional
    (child1132 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1130 (830, 6) = (output1132, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1131 (830, 6) = (output1133, (830, 6)) := by
  rw [output1133_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1132

theorem node1134_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1132 (830, 6) = (output1134, (830, 6)) := by
  rw [output1134_def]
  kernel_rfl

theorem node1135_conditional
    (child1134 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1132 (830, 6) = (output1134, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1133 (830, 6) = (output1135, (830, 6)) := by
  rw [output1135_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1134

theorem node1136_conditional
    (child1135 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1133 (830, 6) = (output1135, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1134 (830, 6) = (output1136, (830, 6)) := by
  rw [output1136_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1135 child99

theorem node1137_conditional
    (child1136 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1134 (830, 6) = (output1136, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1135 (830, 6) = (output1137, (830, 6)) := by
  rw [output1137_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1136

theorem node1138_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1137 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1135 (830, 6) = (output1137, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1136 (830, 6) = (output1138, (830, 6)) := by
  rw [output1138_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1137

theorem node1139_conditional
    (child1138 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1136 (830, 6) = (output1138, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1137 (830, 6) = (output1139, (830, 6)) := by
  rw [output1139_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1138

theorem node1140_conditional
    (child1133 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1131 (830, 6) = (output1133, (830, 6)))
    (child1139 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1137 (830, 6) = (output1139, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1138 (830, 6) = (output1140, (830, 6)) := by
  rw [output1140_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1133 child1139

theorem node1141_conditional
    (child1140 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1138 (830, 6) = (output1140, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1139 (830, 6) = (output1141, (830, 6)) := by
  rw [output1141_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1140

theorem node1142_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1141 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1139 (830, 6) = (output1141, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1140 (830, 6) = (output1142, (830, 6)) := by
  rw [output1142_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1141

theorem node1143_conditional
    (child1142 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1140 (830, 6) = (output1142, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1141 (830, 6) = (output1143, (830, 6)) := by
  rw [output1143_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1142

theorem node1144_conditional
    (child1131 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1129 (830, 2) = (output1131, (830, 6)))
    (child1143 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1141 (830, 6) = (output1143, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1142 (830, 2) = (output1144, (830, 6)) := by
  rw [output1144_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1131 child1143

theorem node1145_conditional
    (child1144 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1142 (830, 2) = (output1144, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1143 (830, 2) = (output1145, (830, 6)) := by
  rw [output1145_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1144

theorem node1146_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1144 (830, 6) = (output1146, (830, 6)) := by
  rw [output1146_def]
  kernel_rfl

theorem node1147_conditional
    (child1146 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1144 (830, 6) = (output1146, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1145 (830, 6) = (output1147, (830, 6)) := by
  rw [output1147_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1146

theorem node1148_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1146 (830, 6) = (output1148, (830, 6)) := by
  rw [output1148_def]
  kernel_rfl

theorem node1149_conditional
    (child1148 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1146 (830, 6) = (output1148, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1147 (830, 6) = (output1149, (830, 6)) := by
  rw [output1149_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1148

theorem node1150_conditional
    (child1149 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1147 (830, 6) = (output1149, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1148 (830, 6) = (output1150, (830, 6)) := by
  rw [output1150_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1149 child99

theorem node1151_conditional
    (child1150 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1148 (830, 6) = (output1150, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1149 (830, 6) = (output1151, (830, 6)) := by
  rw [output1151_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1150

#print axioms node1151_conditional
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints766
